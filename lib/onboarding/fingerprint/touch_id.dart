import 'package:bankee/constants/margins.dart';
import 'package:bankee/onboarding/authentication/sign_in.dart';
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
              yMargin(30),
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
                    yMargin(23),
                    Image.asset("images/fingerprint.png"),
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
