import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_colors.dart';
import 'package:talktime/recourses/app_string.dart';
import 'package:talktime/recourses/app_widget_style.dart';
import 'package:talktime/widgets/small_type_widget/small_type_widget.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/images/img_one.jpg', height: 120, width: 120),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name Label', style: mediumBlack),
                  Text('User Name', style: smallBlack),
                ],
              )
            ],
          ),
          const Divider(),
          labelRowWithButton(labelText: "About Me"),
          Text(personOne, style: smallGrey),
          const Divider(),
        ],
      ),
    );
  }
}
