import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:pocket_cash/screens/sign_up_screen/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/splash_image.png', height:150, width:300),
            Text(
              'Pocket Cash', 
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color: Color.fromARGB(255, 135, 42, 236)
                ),
              ),
            const SizedBox(height: 30),
              if(Platform.isIOS)
                const CupertinoActivityIndicator(
                  radius: 30,
              )
          else
          const CircularProgressIndicator(
            color: Color.fromARGB(255, 135, 42, 236)
            )
          ]
        )
      )
    );
  }
}