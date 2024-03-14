import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';
import 'package:talktime/recourses/app_string.dart';
import 'package:talktime/widgets/button_widgets.dart';
import 'package:talktime/widgets/image_widgets.dart';
import 'package:talktime/widgets/rich_text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size widgetSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true, // Allow content to extend behind app bar
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Set transparent background
          elevation: 0, // Remove shadow
          shadowColor: Colors.transparent, // Ensure complete transparency
          forceMaterialTransparency: true, // Ensure transparency on Android (Flutter 3.12+)
        ),
        body: Column(
          children: [
            Container(
              width: widgetSize.width,
              height: widgetSize.height / 2,
              child: Image.asset(
                "assets/images/img_one.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: const Text(
                "Name Label",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: locationPinText(locationText: 'Locality'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  socialIconImage(iconImage: "assets/icons/instagram.png"),
                  socialIconImage(iconImage: "assets/icons/facebook.png"),
                  socialIconImage(iconImage: "assets/icons/linkedin.png"),
                  socialIconImage(iconImage: "assets/icons/youtube.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                personOne,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
        bottomNavigationBar: Row(
          children: [
            bottomNavigationButton(
              buttonText: 'Book a meeting',
              buttonAction: () {
                Navigator.pushNamed(context, 'booking_schedule');
              },
            ),
            bottomNavigationButton(
              buttonText: 'Book a call',
              buttonAction: () {
                Navigator.pushNamed(context, 'booking_schedule');
              },
            ),
          ],
        ),
      ),
    );
  }
}
