import 'dart:async';

import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/onboarding/authentication/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bankee",
                style: title.copyWith(color: white, fontWeight: bold),
              ),
              Text(
                "Bank, Finance kit",
                style: subtitle.copyWith(color: white, fontWeight: medium),
              )
            ],
          ),
        ),
      ),
    );
  }
}
