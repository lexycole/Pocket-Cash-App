import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pocket_cash/screens/home_screen/index.dart';
import 'package:pocket_cash/screens/login_screen/index.dart';
import 'package:pocket_cash/screens/more_screen/index.dart';
import 'package:pocket_cash/screens/sign_up_screen/index.dart';
import 'package:pocket_cash/screens/splash_screen/index.dart';
import 'package:pocket_cash/screens/task_screen/index.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Intialize Ads
    MobileAds.instance.initialize();
    return Provider(
      create: (_) => const SignUpScreen(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocket Cash',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/task': (context) => const TaskScreen(),
        '/more': (context) => const MoreScreen(),
        }
      ),
    );
  }
}