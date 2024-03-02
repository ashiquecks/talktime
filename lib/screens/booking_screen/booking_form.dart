import 'package:flutter/material.dart';
import 'package:talktime/widgets/bootom_sheet_container.dart';
import 'package:talktime/widgets/button_widgets.dart';
import 'package:talktime/widgets/text_form_field_widgets.dart';

class BookingForm extends StatelessWidget {
  const BookingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          primaryTextFormField(
            hintText: "Enter Name",
            keyboardType: TextInputType.name,
          ),
          primaryTextFormField(
            hintText: "Enter Email",
            keyboardType: TextInputType.emailAddress,
          ),
          primaryTextFormField(
            hintText: "Phone Number",
            keyboardType: TextInputType.emailAddress,
          ),
          primaryTextFormField(
            hintText: "Enter City",
            keyboardType: TextInputType.text,
          ),
          primaryTextFormField(
            hintText: "Enter Pin Code",
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      bottomNavigationBar: primaryButton(
        buttonText: "CONFIRM",
        buttonAction: () {
          Navigator.pushNamed(context, 'booking_schedule');
        },
      ),
    );
  }
}
