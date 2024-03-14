import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_colors.dart';
import 'package:talktime/recourses/app_widget_style.dart';
import 'package:talktime/widgets/card_widget.dart';
import 'package:talktime/widgets/column_widget.dart';
import 'package:talktime/widgets/container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        title: Image.asset('assets/images/logo.png', height: 140),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Text("Following", style: mediumBlack),
              trailing: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("See All", style: smallBlack),
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  followingListCard(image: 'assets/images/img_one.jpg'),
                  followingListCard(image: 'assets/images/img_one.jpg'),
                  followingListCard(image: 'assets/images/img_one.jpg'),
                  followingListCard(image: 'assets/images/img_one.jpg'),
                ],
              ),
            ),
            // ListTile(
            //   leading: Text("Post Wall", style: mediumBlack),
            // ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'profile_screen');
              },
              child: Row(
                children: [
                  profileImageCard(image: 'assets/images/img_one.jpg'),
                  profileContentColumn(title: 'Name Label', expert: 'Category')
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'profile_screen');
              },
              child: Row(
                children: [
                  profileImageCard(image: 'assets/images/img_one.jpg'),
                  profileContentColumn(title: 'Name Label', expert: 'Category')
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'profile_screen');
              },
              child: Row(
                children: [
                  profileImageCard(image: 'assets/images/img_one.jpg'),
                  profileContentColumn(title: 'Name Label', expert: 'Category')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
