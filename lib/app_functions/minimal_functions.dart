import 'package:flutter/material.dart';

timingExit(BuildContext context) {
  Future.delayed(const Duration(seconds: 2), () {
    Navigator.pop(context);
  });
}

timingNavigator(BuildContext context, String navigateScreen) {
  Future.delayed(const Duration(seconds: 3), () {
    Navigator.pop(context);
    Navigator.pushNamed(context, navigateScreen);
  });
}
