import 'dart:convert';
import 'dart:io';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:talktime/json_model/creator_account_jsonmodel.dart';
import 'package:talktime/services/network_response/network_response.dart';

Future<NetworkResponse<CreatorAccountJsonModel>> createCreatorAccount({
  required String userName,
  required String password,
  required String email,
}) async {
  try {
    ParseObject response = ParseObject('_User')
      ..set('username', userName)
      ..set('password', password)
      ..set('email', email);
    await response.save();

    QueryBuilder queryPublisher = QueryBuilder(response);
    ParseResponse queryResponse = await queryPublisher.query();

    if (queryResponse.statusCode == 200) {
      dynamic jsonResponse = json.decode((queryResponse.results as List).last.toString());
      CreatorAccountJsonModel responseData = CreatorAccountJsonModel.fromJson(jsonResponse);

      return NetworkResponse(true, responseData);
    } else {
      return NetworkResponse(false, null, message: 'Invalid response received from server!');
    }
  } on SocketException {
    return NetworkResponse(false, null, message: "Unable to reach the internet! Please try again in a minutes or two");
  } on FormatException {
    return NetworkResponse(false, null, message: "Invalid response received form the server!");
  } catch (e) {
    return NetworkResponse(false, null, message: "something went wrong! Please try again in a minutes or two");
  }
}
