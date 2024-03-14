import 'package:flutter/material.dart';
import 'package:talktime/recourses/app_colors.dart';
import 'package:talktime/widgets/costomized_class/custom_bottom_navigationbar.dart';
import 'package:talktime/widgets/widget_class/post_wall_card/post_wall_card.dart';
import 'package:talktime/widgets/widget_class/profile_wall_card/profile_wall_card.dart';
import 'package:talktime/widgets/widget_function/following_avatar_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size widgetSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 15),
          SizedBox(
            height: 160,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                followingAvatarCard(image: 'assets/images/img_one.jpg'),
                followingAvatarCard(image: 'assets/images/img_one.jpg'),
                followingAvatarCard(image: 'assets/images/img_one.jpg'),
                followingAvatarCard(image: 'assets/images/img_one.jpg'),
              ],
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return const ProfileWallCard();
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
          const Divider(
            height: 5,
            thickness: 5,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return const PostWallCard();
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
        ],
      ),
    );
  }
}
