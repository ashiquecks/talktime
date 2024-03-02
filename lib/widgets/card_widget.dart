import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_colors.dart';
import 'package:talktime/recourses/app_widget_style.dart';

Widget categoryCardWidget({
  required String images,
  required String label,
}) {
  return Card(
    margin: const EdgeInsets.all(10),
    color: Color.fromARGB(255, 53, 53, 53),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Container(
      width: 140,
      height: 140,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            child: Image.asset(images),
          ),
          Text(label, style: const TextStyle(color: Colors.white, fontSize: 16)),
          const Text("expert", style: TextStyle(color: Color.fromARGB(255, 192, 192, 192))),
        ],
      ),
    ),
  );
}

Widget profileImageCard({required String image}) {
  return Card(
    margin: const EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: SizedBox(
      width: 140,
      height: 140,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    ),
  );
}
