import 'package:flutter/material.dart';

import '../Helpers/Constants/Colors.dart';


class ButtonForword extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final double? borderWidth;

  const ButtonForword({
    required this.text,
    required this.onTap,
    this.buttonColor,
    this.buttonBorderColor,
    this.borderWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5, // Adjust the elevation to change the shadow effect
        shadowColor: Colors.grey, // Shadow color
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            color: ThemeApp.mainColor,
            borderRadius: BorderRadius.circular(50),
          ),
          width: 318,
          height: 55,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: ThemeApp.pageColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
