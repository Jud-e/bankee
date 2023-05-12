import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:bankee/resuable_widgets/otp_text_field.dart';
import 'package:flutter/material.dart';

import '../authentication/sign_in.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  List<String> currentPin = ["", "", "", ""];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                yMargin(60),
                Text(
                  "Set your PIN",
                  style: authorizeTitle.copyWith(
                      fontWeight: bold, color: darkblue),
                ),
                yMargin(15),
                Text(
                  "You will use this to login next time",
                  style: h4.copyWith(fontWeight: regular, color: darkblue),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 76,
                      height: 76,
                      child: OTPTextField(
                        controller: pinOneController,
                      ),
                    ),
                    SizedBox(
                      width: 76,
                      height: 76,
                      child: OTPTextField(
                        controller: pinTwoController,
                      ),
                    ),
                    SizedBox(
                        width: 76,
                        height: 76,
                        child: OTPTextField(
                          controller: pinThreeController,
                        )),
                    SizedBox(
                        width: 76,
                        height: 76,
                        child: OTPTextField(
                          controller: pinFourController,
                        ))
                  ],
                ),
                CustomButton(color: purple, text: "Save PIN", function: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
