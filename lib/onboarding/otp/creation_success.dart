import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/onboarding/fingerprint/touch_id.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                yMargin(50),
                Image.asset("images/thumbs_up.png"),
                yMargin(80),
                Text(
                  "Account Created!",
                  style: h1.copyWith(fontWeight: bold, color: darkblue),
                ),
                yMargin(21),
                Text(
                  "Dear user your account has been created successfully. Continue to start using app",
                  textAlign: TextAlign.center,
                  style: h4.copyWith(
                    fontWeight: regular,
                    color: darkblue,
                  ),
                ),
                yMargin(80),
                CustomButton(
                    color: purple,
                    text: "Continue",
                    function: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Fingerprint()));
                    }),
                yMargin(20),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "by clicking start, you agree to our ",
                          style: h4.copyWith(
                            fontWeight: regular,
                            color: darkblue,
                          )),
                      TextSpan(
                          text: "Privacy policy ",
                          style: h4.copyWith(
                              fontWeight: regular,
                              color: purple,
                              decoration: TextDecoration.underline)),
                      TextSpan(
                          text: "and our ",
                          style: h4.copyWith(
                            fontWeight: regular,
                            color: darkblue,
                          )),
                      TextSpan(
                        text: "Terms and Conditions",
                        style: h4.copyWith(
                            fontWeight: regular,
                            color: purple,
                            decoration: TextDecoration.underline),
                      ),
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
