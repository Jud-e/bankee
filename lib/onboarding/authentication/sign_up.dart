import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/onboarding/authentication/sign_in.dart';
import 'package:bankee/onboarding/otp/number_registration.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:bankee/resuable_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;
  late FocusNode focusNode = FocusNode()
    ..addListener(() {
      setState(() {});
    });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                yMargin(71),
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
                const CustomTextField(
                  hintText: "Full Name",
                ),
                yMargin(5),
                const CustomTextField(
                  hintText: "Email address",
                ),
                yMargin(5),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      // suffixIcon: ,
                      filled: true,
                      hintText: "Password",
                      hintStyle: h4.copyWith(fontWeight: regular),
                      contentPadding: const EdgeInsets.all(15),
                      fillColor:
                          focusNode.hasFocus ? purple.withOpacity(0.33) : grey,
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
                yMargin(28),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "By creating your account you have to agree with our Teams and Conditions.",
                        style:
                            h5.copyWith(color: darkgrey, fontWeight: regular),
                      ),
                    )
                  ],
                ),
                yMargin(49),
                CustomButton(
                  color: purple,
                  text: "Sign up my account",
                  function: () {},
                ),
                yMargin(7),
                CustomButton(
                  color: darkblue,
                  text: "Sign up with Phone Number",
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MobileNumberRegistration()));
                  },
                ),
                yMargin(19),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an account?",
                          style: h4.copyWith(
                              color: darkblue, fontWeight: regular)),
                      TextSpan(
                          text: " - ",
                          style: h4.copyWith(
                              color: darkblue, fontWeight: regular)),
                      TextSpan(
                          text: "Sign In",
                          style:
                              h4.copyWith(color: darkblue, fontWeight: bold)),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
