// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double fontSize;
  Color textColor;
  FontWeight fontWeight;
  
  CustomText(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.fontWeight = FontWeight.normal,
      this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, color: textColor, fontWeight: fontWeight),
    );
  }
}
