import 'package:flutter/material.dart';

Widget followingImageCircle({
  required String image,
}) {
  return  CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage(image),
  );
}
