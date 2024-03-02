import 'package:flutter/material.dart';

Widget primaryTextFormField({
  required String hintText,
  required TextInputType keyboardType
}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(),
        hintText: hintText,
      ),
    ),
  );
}
