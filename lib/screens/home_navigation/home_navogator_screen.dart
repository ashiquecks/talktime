import 'package:flutter/material.dart';
import 'package:talktime/screens/category_screen/category_screen.dart';
import 'package:talktime/screens/home_screen/home_screen.dart';
import 'package:talktime/screens/user_profile_screen/user_profile_screen.dart';
import 'package:talktime/widgets/costomized_class/custom_bottom_navigationbar.dart';

class HomeNavigatorScreen extends StatefulWidget {
  const HomeNavigatorScreen({super.key});

  @override
  State<HomeNavigatorScreen> createState() => _HomeNavigatorScreenState();
}

class _HomeNavigatorScreenState extends State<HomeNavigatorScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    UserProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        title: Image.asset('assets/images/min-logo.png', height: 50),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _onItemTapped(index);
        },
        items: [
          CustomBottomNavigationBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.grey,
          ),
          CustomBottomNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Category"),
            selectedColor: Colors.grey,
          ),
          CustomBottomNavigationBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
