import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:bankee/resuable_widgets/otp_text_field.dart';
import 'package:flutter/material.dart';

import '../authentication/sign_in.dart';

class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;

  const KeyboardNumber({required this.n, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(shape: BoxShape.circle, color: transparent),
      alignment: Alignment.center,
      child: MaterialButton(
          padding: const EdgeInsets.all(8.0),
          onPressed: onPressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          height: 90,
          child: Text(
            "$n",
            textAlign: TextAlign.center,
            style: authorizeTitle.copyWith(fontWeight: bold),
          )),
    );
  }
}

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
                yMargin(40),
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
                yMargin(10),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            KeyboardNumber(
                              n: 1,
                              onPressed: () {},
                            ),
                            xMargin(10),
                            KeyboardNumber(
                              n: 2,
                              onPressed: () {},
                            ),
                            xMargin(10),
                            KeyboardNumber(
                              n: 3,
                              onPressed: () {},
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            KeyboardNumber(
                              n: 4,
                              onPressed: () {},
                            ),
                            xMargin(10),
                            KeyboardNumber(
                              n: 5,
                              onPressed: () {},
                            ),
                            xMargin(10),
                            KeyboardNumber(
                              n: 6,
                              onPressed: () {},
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            KeyboardNumber(
                              n: 7,
                              onPressed: () {},
                            ),
                            xMargin(10),
                            KeyboardNumber(
                              n: 8,
                              onPressed: () {},
                            ),
                            xMargin(10),
                            KeyboardNumber(
                              n: 9,
                              onPressed: () {},
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            KeyboardNumber(
                              n: 0,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
