import 'package:bankee/constants/colors.dart';
import 'package:bankee/constants/margins.dart';
import 'package:bankee/constants/text_style.dart';
import 'package:bankee/custom_appbar.dart';
import 'package:bankee/resuable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MoneySummary extends StatefulWidget {
  const MoneySummary({super.key});

  @override
  State<MoneySummary> createState() => _MoneySummaryState();
}

class _MoneySummaryState extends State<MoneySummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: "Summary",
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                yMargin(20),
                Image.asset("images/illustration.png"),
                yMargin(15),
                Center(
                  child: Column(children: [
                    Text(
                      "This month spending",
                      style: subtitle.copyWith(fontWeight: bold),
                    ),
                    yMargin(5),
                    Text(
                      "data",
                      style: h1.copyWith(fontWeight: bold),
                    ),
                    yMargin(5),
                    Text(
                      "Well done you have maintain your\n spending under control",
                      textAlign: TextAlign.center,
                      style: h4.copyWith(fontWeight: regular),
                    ),
                    yMargin(17),
                    CustomButton(color: purple, text: "Great", function: () {}),
                    yMargin(26),
                  ]),
                ),
                Container(
                  color: slightlyTransparent,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 31),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Top Category",
                            // textAlign: TextAlign.left,
                            style: h3.copyWith(fontWeight: bold),
                          ),
                        ),
                        yMargin(23),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [Container()],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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
