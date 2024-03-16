import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_colors.dart';
import 'package:talktime/recourses/app_widget_style.dart';

Widget socialIconImage({required String iconImage}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(
      iconImage,
      width: 20,
    ),
  );
}

Widget labelRowWithButton({
  required String labelText,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(labelText, style: mediumBlack),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(border: Border.all(color: primaryGrey), borderRadius: BorderRadius.circular(5)),
          child: Text("More", style: smallGrey),
        )
      ],
    ),
  );
}
