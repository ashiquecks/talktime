import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_string.dart';
import 'package:talktime/recourses/app_widget_style.dart';

Widget selectUserTypeCard({
  required BuildContext context,
  required String userType,
  required String typeImage,
}) {
  final widgetSize = MediaQuery.of(context).size;
  return InkWell(
    onTap: () {
      if (userType == "Creator Account") {
        Navigator.pushNamed(context, 'creator_register_screen');
      } else {
        Navigator.pushNamed(context, 'home_navigator_screen');
      }

    },
    child: Card(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: widgetSize.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("user Type", style: smallGrey),
                Text(userType, style: mediumGrey),
                Text(smallDummyText, overflow: TextOverflow.fade, style: smallGrey),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: Image.asset(
              typeImage,
              height: 140,
              width: 140,
            ),
          )
        ],
      ),
    ),
  );
}
