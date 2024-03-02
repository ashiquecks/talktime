import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_widget_style.dart';
import 'package:talktime/widgets/rich_text_widget.dart';

Widget profileContentColumn({
  required String title,
  required String expert,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          title,
          style: mediumWhite,
        ),
      ),
      locationPinText(locationText: 'Pune, Maharashtra'),
      Card(
        margin: const EdgeInsets.only(top: 10),
        color: const Color.fromARGB(255, 26, 26, 26),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: Text(expert, style: const TextStyle(color: Colors.white, fontSize: 12)),
        ),
      ),
    ],
  );
}
