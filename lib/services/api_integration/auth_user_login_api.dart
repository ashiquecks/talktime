import 'dart:convert';
import 'dart:io';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:talktime/json_model/user_login_jsonmodel.dart';
import 'package:talktime/services/network_response/network_response.dart';

Future<NetworkResponse<UserLoginJsonModel>> userLogin({
  required String password,
  required String username,
}) async {
  ParseResponse response = ParseResponse();
  try {
    ParseUser user = ParseUser(username, password, null);
    response = await user.login();
    if (response.statusCode == 200) {
      dynamic jsonResponse = json.decode((response.results as List).last.toString());
      UserLoginJsonModel responseData = UserLoginJsonModel.fromJson(jsonResponse);
      return NetworkResponse(true, responseData, message: "User Logged in: ${response.result}");
    } else {
      return NetworkResponse(false, null, message: "Error: ${response.result}");
    }
  } on SocketException {
    return NetworkResponse(false, null, message: "Unable to reach the internet! Please try again in a minutes or two");
  } on FormatException {
    return NetworkResponse(false, null, message: "Invalid response received form the server!");
  } catch (e) {
    return NetworkResponse(false, null, message: "something went wrong! Please try again in a minutes or two");
  }
}
