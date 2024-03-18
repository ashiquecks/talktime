import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talktime/widgets/button_widgets.dart';
import 'package:talktime/widgets/dialog_type_widget/api_loading_dialog.dart';
import 'package:talktime/widgets/widget_function/text_form_field_widgets.dart';
import 'authentication_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthenticationProvider provider = Provider.of<AuthenticationProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          primaryTextFormField(
              hintText: "Email/Username", keyboardType: TextInputType.emailAddress, controller: provider.emailControl),
          primaryTextFormField(
              hintText: "Password", keyboardType: TextInputType.emailAddress, controller: provider.passwordControl),
          primaryButton(
            buttonText: "Login",
            buttonAction: () {
              userLoginFunction(context: context);
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'creator_register_screen');
            },
            child: const Text("New User? Register Here"),
          ),
        ],
      ),
    );
  }
}
