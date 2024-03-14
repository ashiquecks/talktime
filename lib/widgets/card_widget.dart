import 'package:flutter/material.dart';

// TEMPORARY DISABLED THIS WIDGET (14-03-2004 DESIGN CHANGED NOT USED THIS WIDGET ----REMOVABLE)
Widget categoryCardWidget({
  required String images,
  required String label,
}) {
  return Card(
    margin: const EdgeInsets.all(10),
    color: Color.fromARGB(255, 33, 80, 233),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Container(
      width: 140,
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
          const Text("expert", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
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
