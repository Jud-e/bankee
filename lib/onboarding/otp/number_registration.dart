import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/onboarding/otp/verify_number.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MobileNumberRegistration extends StatefulWidget {
  const MobileNumberRegistration({super.key});

  @override
  State<MobileNumberRegistration> createState() =>
      _MobileNumberRegistrationState();
}

class _MobileNumberRegistrationState extends State<MobileNumberRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                yMargin(108),
                Text(
                  "Mobile Number",
                  style: h1.copyWith(fontWeight: bold, color: darkblue),
                ),
                yMargin(21),
                Text(
                  "Please enter your valid phone number. We will send you 4-digit code to verify account.",
                  style: h4.copyWith(fontWeight: regular, color: darkblue),
                  textAlign: TextAlign.center,
                ),
                yMargin(63),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10)
                    ],
                    cursorColor: darkgrey,
                    decoration: InputDecoration(
                      filled: true,
                      hintStyle: h4.copyWith(fontWeight: regular),
                      contentPadding: const EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: darkgrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: purple),
                      ),
                    ),
                  ),
                ),
                yMargin(107),
                CustomButton(
                    color: purple,
                    text: "Send Code",
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NumberVerification()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
