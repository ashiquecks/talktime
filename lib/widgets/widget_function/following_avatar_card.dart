import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_widget_style.dart';

followingAvatarCard({
  required String image,
}) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(border: Border.all(width: 2), borderRadius: BorderRadius.circular(35)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Text(
        "Name Label",
        style: smallBlack,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  );
}
