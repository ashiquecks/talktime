import 'package:flutter/material.dart';

Widget socialIconImage({
  required String iconImage
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(
      iconImage,
      width: 20,
    ),
  );
}
