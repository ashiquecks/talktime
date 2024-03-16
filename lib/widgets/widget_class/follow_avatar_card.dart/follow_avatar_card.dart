import 'package:flutter/material.dart';

class FollowAvatarCard extends StatelessWidget {
  final String imageFileName;
  final String iconFileName;
  final String labelText;
  const FollowAvatarCard({
    super.key,
    required this.imageFileName,
    required this.iconFileName,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ProfileScreen(),
      //   ),
      // ),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 2,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 0, 0, 0),
                      ],
                      // colors: [
                      //   Color.fromARGB(255, 74, 54, 253),
                      //   Color.fromARGB(255, 226, 73, 206),
                      // ],
                      begin: Alignment.topCenter,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        imageFileName,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: -5,
                  child: Image.asset(
                    iconFileName,
                    height: 25,
                    width: 25,
                  ),
                )
              ],
            ),
            Expanded(
              child: Text(
                labelText,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
