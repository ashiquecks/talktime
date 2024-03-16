import 'package:flutter/material.dart';

Widget profileAvatarCard({
  required String image,
}) {
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/img_one.jpg',
              width: 160,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const Positioned(
        bottom: 15,
        left: 15,
        child: Text(
          "Name Label",
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
