import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NumberVerification extends StatefulWidget {
  const NumberVerification({super.key});

  @override
  State<NumberVerification> createState() => _NumberVerificationState();
}

class _NumberVerificationState extends State<NumberVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(children: [
                      yMargin(108),
                      Text(
                        "Verify Account",
                        style: h1.copyWith(fontWeight: bold, color: darkblue),
                      ),
                      yMargin(21),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text:
                                "Enter 4-digit Code code we have sent to at\n",
                            style: h4.copyWith(
                              fontWeight: regular,
                              color: darkblue,
                            )),
                        TextSpan(
                            text: "+0 000 000 0000.",
                            style: h4.copyWith(
                                fontWeight: regular,
                                color: purple,
                                decoration: TextDecoration.underline))
                      ])),
                      yMargin(59),
                      Row(
                        children: [
                          SizedBox(
                            width: 76,
                            height: 40,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(1)
                              ],
                            ),
                          )
                        ],
                      ),
                      yMargin(43),
                      Text("data",
                          style: h4.copyWith(
                              fontWeight: regular, color: darkblue)),
                      yMargin(14),
                      Text("Resend Code",
                          style: h3.copyWith(
                              fontWeight: regular,
                              color: purple,
                              decoration: TextDecoration.underline)),
                      yMargin(217),
                      CustomButton(
                          color: purple, text: "Proceed", function: () {}),
                      yMargin(21),
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
                    ])))));
  }
}
