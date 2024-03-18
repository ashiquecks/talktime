import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:provider/provider.dart';
import 'package:talktime/screens/account_launch_screen/select_user_type_screen.dart';
import 'package:talktime/screens/authentication_screen/authentication_provider.dart';
import 'package:talktime/screens/authentication_screen/login_screen.dart';
import 'package:talktime/screens/booking_screen/booking_form.dart';
import 'package:talktime/screens/booking_screen/booking_shedule.dart';
import 'package:talktime/screens/creator_register_screen/creator_register_provider.dart';
import 'package:talktime/screens/home_navigation/home_navogator_screen.dart';
import 'package:talktime/screens/home_screen/home_screen.dart';
import 'package:talktime/screens/profile_screen/profile_screen.dart';
import 'package:talktime/screens/splash_screen/splash_screen.dart';

import 'screens/creator_register_screen/creator_register_screen.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  const keyApplicationId = 'IST60ay1prgmxVPlbsnVwWaUEE29UlDHvwLnqtFW';
  const keyClientKey = 'BapjkaZBWu6QLSibPAvgO9EuRlXUCOFvpW7tBM5s';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey,
      liveQueryUrl: 'https://chat360.b4a.io',
      debug: true);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (context) => CreatorRegisterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        initialRoute: 'splash_screen',
        routes: {
          'splash_screen': (context) => const SplashScreen(),
          'home_navigator_screen': (context) => const HomeNavigatorScreen(),
          'home_screen': (context) => const HomeScreen(),
          'profile_screen': (context) => const ProfileScreen(),
          'booking_form': (context) => const BookingForm(),
          'booking_schedule': (context) => const BookingSchedule(),
          'select_account_type': (context) => const SelectUserType(),
          'creator_register_screen': (context) => const CreatorRegisterScreen(),
          'login_screen': (context) => const LoginScreen(),
        },
      ),
    );
  }
}
