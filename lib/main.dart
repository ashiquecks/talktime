import 'package:flutter/material.dart';
import 'package:talktime/screens/booking_screen/booking_form.dart';
import 'package:talktime/screens/booking_screen/booking_shedule.dart';
import 'package:talktime/screens/home_screen/home_screen.dart';
import 'package:talktime/screens/profile_screen/profile_screen.dart';
import 'package:talktime/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => const SplashScreen(),
        'home_screen': (context) => const HomeScreen(),
        'profile_screen': (context) => const ProfileScreen(),
        'booking_form': (context) => const BookingForm(),
        'booking_schedule': (context) => const BookingSchedule(),
      },
    );
  }
}
