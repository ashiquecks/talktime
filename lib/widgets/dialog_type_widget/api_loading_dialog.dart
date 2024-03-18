import 'package:flutter/material.dart';

void apiLoadingDialog({
  required BuildContext context,
  required String status,
}) {
  showDialog(
    context: context,
    builder: (context) {
      Widget iconWidget;
      Widget textWidget;
      switch (status) {
        case "loading":
          iconWidget = const CircularProgressIndicator();
          textWidget = const Text("Loading...");
          break;
        case "failed":
          iconWidget = const Icon(Icons.cancel, color: Colors.red, size: 30);
          textWidget = const Text("Failed");
          break;
        case "success":
          iconWidget = const Icon(Icons.check_circle, color: Colors.green, size: 30);
          textWidget = const Text("Success");
          break;
        default:
          throw ArgumentError("Invalid status: $status");
      }
      return AlertDialog(
        content: Row(
          children: [
            iconWidget,
            const SizedBox(width: 20),
            textWidget,
          ],
        ),
      );
    },
  );
}
