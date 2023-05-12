import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/onboarding/otp/verify_number.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MobileNumberRegistration extends StatefulWidget {
  const MobileNumberRegistration({super.key});

  @override
  State<MobileNumberRegistration> createState() =>
      _MobileNumberRegistrationState();
}

class _MobileNumberRegistrationState extends State<MobileNumberRegistration> {
  Country selectedCountry = Country(
      phoneCode: "234",
      countryCode: "NG",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "Nigeria",
      example: "Nigeria",
      displayName: "Nigeria",
      displayNameNoCountryCode: "NG",
      e164Key: "");
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
                        hintText: "Enter your phone number",
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
                        prefixIcon: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: InkWell(
                              onTap: () {
                                showCountryPicker(
                                    context: context,
                                    countryListTheme:
                                        const CountryListThemeData(
                                            bottomSheetHeight: 500),
                                    onSelect: (value) {
                                      setState(() {
                                        selectedCountry = value;
                                      });
                                    });
                              },
                              child: Text(
                                "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: bold),
                              ),
                            ),
                          ),
                        )),
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
