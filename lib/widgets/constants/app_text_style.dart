// widgets/custom_text.dart

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final  text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const CustomText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.isEmpty ? 'No Data Available' : text,
      style: TextStyle(
        fontSize: fontSize ?? 14.0,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
      ),
    );
  }
}
