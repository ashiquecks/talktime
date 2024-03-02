import 'package:flutter/material.dart';

Widget bottomSheetContainer() {
  return Container(
    child: Column(
      children: [
        const Text("Set Meeting Shedule"),
        Card(
          child: TextButton(
            onPressed: () {},
            child: const Text("Select Meeting Date"),
          ),
        ),
        Row(
          children: [
            Card(
              child: TextButton(
                onPressed: () {},
                child: const Text("Start Time"),
              ),
            ),
            Card(
              child: TextButton(
                onPressed: () {},
                child: const Text("End Time"),
              ),
            )
          ],
        )
      ],
    ),
  );
}
