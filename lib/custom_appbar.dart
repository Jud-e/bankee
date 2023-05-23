import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/onboarding/authentication/sign_in.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppbar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: darkblue,
              size: 30,
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const SignIn()));
            }),
        title: Text(
          title,
          style: subtitle.copyWith(fontWeight: bold, color: darkblue),
        ));
  }
}
