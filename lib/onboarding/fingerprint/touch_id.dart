import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/onboarding/authentication/sign_in.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Fingerprint extends StatelessWidget {
  const Fingerprint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SafeArea(
              child: Column(
            children: [
              yMargin(10),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: GestureDetector(
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                ),
              ),
              Center(
                child: Column(
                  children: [
                    // yMargin(23),
                    Image.asset("images/finger_print.png"),
                    yMargin(40),
                    Text(
                      "Use Touch ID to\n authorise payments",
                      style: authorizeTitle.copyWith(
                          fontWeight: bold, color: darkblue),
                      textAlign: TextAlign.center,
                    ),
                    yMargin(10),
                    Text(
                      "Activate touch ID so you don’t need to confirm your PIN every time you want to send money",
                      style: h4.copyWith(fontWeight: regular, color: darkblue),
                      textAlign: TextAlign.center,
                    ),
                    yMargin(40),
                    CustomButton(
                        color: purple, text: "Activate Now", function: () {}),
                    yMargin(16),
                    CustomButton(
                        color: darkgrey, text: "Skip this", function: () {})
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
