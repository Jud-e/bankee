import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/onboarding/authentication/sign_up.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:bankee/resuable_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                yMargin(71),
                Text(
                  "Welcome Back!",
                  style: h1.copyWith(color: darkblue, fontWeight: bold),
                ),
                yMargin(21),
                Text(
                  "Sign in to continue",
                  style: h4.copyWith(color: darkblue, fontWeight: regular),
                ),
                yMargin(87),
                const CustomTextField(hintText: "Email"),
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
                yMargin(21),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text(
                      "Forgot Password?",
                      // textAlign: TextAlign.right,
                      style: h4.copyWith(fontWeight: regular),
                    ),
                  ),
                ),
                yMargin(51),
                CustomButton(color: purple, text: "Sign in my Account"),
                yMargin(19),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Don't have an account?",
                          style: h4.copyWith(
                              color: darkblue, fontWeight: regular)),
                      TextSpan(
                          text: " - ",
                          style: h4.copyWith(
                              color: darkblue, fontWeight: regular)),
                      TextSpan(
                          text: "Sign Up",
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
