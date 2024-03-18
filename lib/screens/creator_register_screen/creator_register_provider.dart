import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talktime/app_functions/minimal_functions.dart';
import 'package:talktime/services/api_integration/post_creator_account_api.dart';
import 'package:talktime/services/sharedpreference/shared_preference.dart';
import 'package:talktime/widgets/dialog_type_widget/api_loading_dialog.dart';

class CreatorRegisterProvider extends ChangeNotifier {

  String responseType = 'loading';
  TextEditingController fullNameControl = TextEditingController();
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();

  Future creatorRegisterResponse({
    required BuildContext context,
  }) async {
    apiLoadingDialog(context: context, status: responseType);
    final response = await createCreatorAccount(
      userName: fullNameControl.text,
      password: passwordControl.text,
      email: emailControl.text,
    );
    if (response.isSuccessful == true) {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
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

void creatorRegisterResponse({
  required BuildContext context,
}) async {
  final provider = Provider.of<CreatorRegisterProvider>(context, listen: false);
  await provider.creatorRegisterResponse(context: context);
}
