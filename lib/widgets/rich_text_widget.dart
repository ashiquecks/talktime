import 'package:flutter/material.dart';

Widget locationPinText({
  required String locationText
}) {
  return RichText(
    text:  TextSpan(
      children: [
        const WidgetSpan(
          child: Icon(
            Icons.location_pin,
            color: Colors.green,
            size: 15,
          ),
        ),
        TextSpan(text: locationText, style: TextStyle(color: Colors.black))
      ],
    ),
  );
}
