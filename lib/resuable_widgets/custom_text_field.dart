import 'package:bankee/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.color});

  final String hintText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            hintText: hintText,
            contentPadding: const EdgeInsets.all(15),
            fillColor: color,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: purple))),
      ),
    );
  }
}
