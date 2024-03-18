import 'package:flutter/material.dart';

Widget primaryTextFormField({
  required String hintText,
  required TextInputType keyboardType,
  required TextEditingController controller,
}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(),
        hintText: hintText,
      ),
    ),
  );
}
