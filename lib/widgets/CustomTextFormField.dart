
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Helpers/Constants/Colors.dart';
import '../Modules/SignIn/signIn-Controller.dart';


class CustomTextFormField extends StatelessWidget {
  final TextEditingController textfieldcontroller;
  final String hintText;
  final Color cursorColor;
  final IconData? suffixIcon;
  final String fontFamily;
  final double fontSize;
  final double sizeicon;
  final bool obscuretext;
  final bool ispassword;
  final String? Function(String?) valid;

  CustomTextFormField({
    required this.hintText,
    this.sizeicon = 16,
    this.suffixIcon,
    required this.valid,
    this.fontFamily = 'Poppins',
    this.fontSize = 16,
    required this.obscuretext,
    required this.ispassword,
    required this.textfieldcontroller, this.cursorColor=Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318,
      height: 51,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),

      ),
      child: Padding(
        padding: EdgeInsets.only(left: 13),
        child: TextFormField(
          cursorColor: cursorColor,
          validator: valid,
          controller: textfieldcontroller,
          obscureText: ispassword ? obscuretext : false,
          decoration: InputDecoration(
            suffixIcon: ispassword
                ? Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01),
              child: IconButton(
                onPressed: () {
                  final SignInController controller = Get.find();
                  controller.updateObscure();
                },
                icon: Icon(
                  obscuretext ? Icons.visibility : Icons.visibility_off,
                  color:  ThemeApp.mainColor,
                ),
              ),
            )
                : (suffixIcon != null
                ? Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01),
              child: Icon(suffixIcon, color: ThemeApp.mainColor, size: 22),
            )
                : null),
            hintText: hintText,
            hintStyle: TextStyle(
              color: ThemeApp.mainColor,
              fontSize: fontSize,
              fontFamily: fontFamily,
            ),
            border: InputBorder.none,
          ),
        ),

      ),
    );
  }
}




