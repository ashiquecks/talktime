import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_string.dart';
import 'package:talktime/recourses/app_widget_style.dart';
import 'package:talktime/widgets/card_widget.dart';
import 'package:talktime/widgets/column_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 160,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  categoryCardWidget(images: 'assets/icons/consulting.png', label: 'Education'),
                  categoryCardWidget(images: 'assets/icons/financial-advisor.png', label: 'Financial'),
                  categoryCardWidget(images: 'assets/icons/programmer.png', label: 'Technology'),
                ],
              ),
            ),
            ListTile(
              leading: Text("Experts", style: mediumWhite),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'profile_screen');
              },
              child: Row(
                children: [
                  profileImageCard(image: 'assets/images/img_one.jpeg'),
                  profileContentColumn(title: 'Gaurav Chaudhary', expert: 'Tech Expert')
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'profile_screen');
              },
              child: Row(
                children: [
                  profileImageCard(image: 'assets/images/img_two.jpg'),
                  profileContentColumn(title: 'Techy Kiran', expert: 'Tech Expert')
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'profile_screen');
              },
              child: Row(
                children: [
                  profileImageCard(image: 'assets/images/img_three.jpg'),
                  profileContentColumn(title: 'Shlok Srivastava', expert: 'Tech Expert')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
