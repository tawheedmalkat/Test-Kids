import 'package:flutter/material.dart';

class FlexibleText extends StatelessWidget {
  static const String fontFamily = 'Poppins';
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final EdgeInsetsGeometry padding;

  const FlexibleText({
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
