import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_colors.dart';
import 'package:talktime/recourses/app_widget_style.dart';

class ProfileWallCard extends StatelessWidget {
  const ProfileWallCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size widgetSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/category-icon.png', width: 50, height: 50),
              Expanded(
                  child: ListTile(
                title: Text("Name Label", style: mediumBlack),
                subtitle: const Text('Category'),
              )),
            ],
          ),
          Image.asset(
            'assets/images/img_one.jpg',
            width: widgetSize.width,
            height: widgetSize.height / 2,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Locality", style: smallBlack),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                padding: const EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: primaryBlack),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Follow", style: smallBlack),
              )
            ],
          ),
          const SizedBox(height: 5)
        ],
      ),
    );
  }
}
