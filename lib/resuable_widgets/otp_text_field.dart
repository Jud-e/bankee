import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/text_style.dart';

class OTPTextField extends StatefulWidget {
  const OTPTextField({
    super.key,
  });

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
        } else if (value.length == 0) {
          FocusScope.of(context).previousFocus();
        }
      },
      focusNode: focusNode,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(1)
      ],
      decoration: InputDecoration(
        filled: true,
        // hintText: widget.hintText,
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
