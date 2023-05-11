import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
                "data",
                style: h1.copyWith(color: white),
              ),
              Text(
                "data",
                style: h1.copyWith(
                  color: white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
