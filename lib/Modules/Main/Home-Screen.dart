import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../Helpers/Constants/Colors.dart';
import '../../Helpers/Search/search.dart';
import '../../Helpers/widgets/Circle.dart';
import '../../Helpers/widgets/Grid-Categories-View.dart';
import '../../Helpers/widgets/flexy-text.dart';
import '../../Helpers/widgets/pictures.dart';
import '../../Helpers/widgets/search-appbar.dart';
import 'Home-Controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ThemeApp.pageColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.05),
          buildHeader(screenWidth),
          FlexibleText(
            text: "Hello Selena",
            color: ThemeApp.mainColor,
            fontWeight: FontWeight.w500,
            fontSize: 20,
            padding: EdgeInsets.only(bottom: 8.0, left: 20, top: 15),
          ),
          FlexibleText(
            text: "Choose what",
            color: ThemeApp.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 27,
            padding: const EdgeInsets.only(left: 20),
          ),
          FlexibleText(
            text: "to learn Today?",
            color: ThemeApp.textColor,
            fontWeight: FontWeight.normal,
            fontSize: 30,
            padding: const EdgeInsets.only(left: 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: InkWell(
              onTap: () {
                showSearch(context: context, delegate: Searching());
              },
              child: ContainerSearch(),
            ),
          ),


           GridviewCategory(),


        ],
      ),
    );
  }

  Row buildHeader(double screenWidth) {
    return Row(
     // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 8.0),
          child: picture(controller: controller),
        ),
       SizedBox(width: screenWidth * 0.52),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.notifications_active, size: 30,color: ThemeApp.clothingColor,)),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.segment_outlined, size: 40)),

      ],
    );
  }
}
