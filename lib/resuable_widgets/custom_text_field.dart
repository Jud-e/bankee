import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.hintText});

  final String hintText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode focusNode = FocusNode()
    ..addListener(() {
      setState(() {});
    });

  // final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        cursorColor: darkgrey,
        focusNode: focusNode,
        decoration: InputDecoration(
          filled: true,
          hintText: widget.hintText,
          hintStyle: h4.copyWith(fontWeight: regular),
          contentPadding: const EdgeInsets.all(15),
          fillColor: focusNode.hasFocus ? purple.withOpacity(0.33) : grey,
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
    );
  }
}
