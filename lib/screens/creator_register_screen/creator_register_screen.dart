import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talktime/widgets/button_widgets.dart';
import 'package:talktime/widgets/widget_function/text_form_field_widgets.dart';

import 'creator_register_provider.dart';

class CreatorRegisterScreen extends StatelessWidget {
  const CreatorRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CreatorRegisterProvider provider = Provider.of<CreatorRegisterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creator Register'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          primaryTextFormField(hintText: "Full Name", keyboardType: TextInputType.name, controller: provider.fullNameControl),
          primaryTextFormField(hintText: "Email Address", keyboardType: TextInputType.emailAddress, controller: provider.emailControl),
          primaryTextFormField(hintText: "Password", keyboardType: TextInputType.emailAddress, controller: provider.passwordControl),
          primaryButton(buttonText: "Confirm", buttonAction: (){
            creatorRegisterResponse(context: context);
            // Navigator.pushNamed(context, 'home_navigator_screen');
          })
        ],
      ),
    );
  }
}