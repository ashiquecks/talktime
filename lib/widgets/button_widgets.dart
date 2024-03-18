import 'package:flutter/material.dart';

Widget bottomNavigationButton({
  required String buttonText,
  required void Function() buttonAction,
}) {
  return Expanded(
    child: Container(
      height: 50,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: buttonAction,
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget primaryButton({
  required String buttonText,
  required void Function() buttonAction,
}) {
  return Container(
    height: 50,
    width: double.infinity,
    margin: const EdgeInsets.all(15),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
