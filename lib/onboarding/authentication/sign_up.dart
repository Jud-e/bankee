import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              yMargin(113.0),
              Text(
                "Welcome!",
                style: h1.copyWith(color: darkblue, fontWeight: bold),
              ),
              yMargin(21),
              Text(
                "Please provide following\ndetails for your new account",
                textAlign: TextAlign.center,
                style: h4.copyWith(color: darkblue, fontWeight: regular),
              ),
              yMargin(62),
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
