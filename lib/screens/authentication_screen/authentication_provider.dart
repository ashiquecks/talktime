import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talktime/app_functions/minimal_functions.dart';
import 'package:talktime/json_model/user_login_jsonmodel.dart';
import 'package:talktime/services/api_integration/auth_user_login_api.dart';
import 'package:talktime/services/network_response/network_response.dart';
import 'package:talktime/services/sharedpreference/shared_preference.dart';
import 'package:talktime/widgets/dialog_type_widget/api_loading_dialog.dart';

class AuthenticationProvider extends ChangeNotifier {
  String responseType = 'loading';
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();

  Future<dynamic> userLoginResponse({
    required BuildContext context,
  }) async {
    apiLoadingDialog(context: context, status: responseType);
    NetworkResponse<UserLoginJsonModel> response = await userLogin(
      username: emailControl.text,
      password: passwordControl.text,
    );
    if (response.isSuccessful == true) {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      userLoginCredential(
        userId: response.data!.objectId,
        userName: response.data!.username,
        email: response.data!.email,
        authToken: response.data!.sessionToken,
      );
      responseType = "success";
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      responseType = "failed";
    }
    // ignore: use_build_context_synchronously
    apiLoadingDialog(context: context, status: responseType);
    // ignore: use_build_context_synchronously
    responseType == "success" ? timingNavigator(context, 'home_navigator_screen') : timingExit(context);
    responseType = "loading";
    notifyListeners();
  }
}

userLoginFunction({required BuildContext context}) async {
  AuthenticationProvider response = Provider.of<AuthenticationProvider>(context, listen: false);
  response.userLoginResponse(context: context);
}
