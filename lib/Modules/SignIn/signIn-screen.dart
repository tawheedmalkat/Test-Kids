import 'package:englishkids/Modules/SignIn/signIn-Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../Helpers/Constants/Colors.dart';
import '../../widgets/Custom-Button.dart';
import '../../widgets/CustomTextFormField.dart';




class SignInScreen extends StatelessWidget {
  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ThemeApp.pageColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
         SizedBox(height:screenHeight * 0.08,),
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [Color(0xffFFD1B8),Color(0xffDE8959)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
              },
              child: Text(
                "English Kids",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'JollyLodger',
                  color: Colors.white, // مطلوب لضمان عمل ShaderMask بشكل صحيح
                ),
              ),
            ),
           SizedBox(height:screenHeight * 0.03,),
            Form(
              key: controller.scaffoldKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    valid: (value) {
                      if (value!.isEmpty) {
                        return 'username is required'.tr;
                      }

                      return null;
                    },
                    textfieldcontroller: controller.usernamecontroller,
                    cursorColor: Colors.white,
                    ispassword: false,
                    obscuretext: false,
                    hintText: "Username",
                    suffixIcon: null,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                  SizedBox(height:screenHeight * 0.025,),
                  Obx(() {
                    return CustomTextFormField(
                      valid: (value) {
                        if (value!.isEmpty) {
                          return 'Password is required'.tr;
                        }
                        return null;
                      },
                      textfieldcontroller: controller.passwordcontroller,
                      cursorColor: Colors.white,
                      ispassword: true,
                      obscuretext: controller.obscuretext.value,
                      hintText: "Password",
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    );
                  }),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.5),
              child: TextButton(onPressed: (){}, child: Text("Forget Password?",style: TextStyle(
                color: ThemeApp.textColor,
                fontFamily: 'Poppins',
                fontSize: 15,

              ),)),
            ),
            Center(
              child: Lottie.asset('assets/images/ezgif-5-bbfd373b5c.mp4.lottie.json',
                  height: 300,reverse: true,repeat: true,fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            ButtonForword(
              text: "Go",
              onTap: () {
                Get.toNamed('/');
              },
              buttonColor:  ThemeApp.animalframeColor,

              borderWidth: 1.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Don’t have account yet?",style: TextStyle( fontWeight: FontWeight.w500 ,color: ThemeApp.textColor,fontFamily: 'Poppins',fontSize: 15),),
                TextButton(onPressed: (){}, child: Text("SignUp",
                  style: TextStyle( fontWeight: FontWeight.w500,color: ThemeApp.mainColor,fontFamily: 'Poppins',fontSize: 16),
                ))
              ],
            ),



          ],
        ),
      ),
    );
  }
}
