import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/text_style.dart';

class OTPTextField extends StatefulWidget {
  const OTPTextField({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;
  @override
  State<OTPTextField> createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  late FocusNode focusNode = FocusNode()
    ..addListener(() {
      setState(() {});
    });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        } else if (value.isEmpty) {
          FocusScope.of(context).previousFocus();
        }
      },
      // controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(1)
      ],
      decoration: InputDecoration(
        filled: true,
        hintStyle: h4.copyWith(fontWeight: regular),
        contentPadding: const EdgeInsets.all(20),
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
    );
  }
}
