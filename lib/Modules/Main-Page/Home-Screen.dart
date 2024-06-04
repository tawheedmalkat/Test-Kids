import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../Helpers/Constants/Colors.dart';
import '../../Helpers/Search/search.dart';
import '../../widgets/Circle.dart';
import '../../widgets/Grid-Categories-View.dart';
import '../../widgets/categories.dart';
import '../../widgets/flexy-text.dart';
import '../../widgets/pictures.dart';
import '../../widgets/search-appbar.dart';
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
            fontSize: 30,
            padding: const EdgeInsets.only(left: 20),
          ),
          FlexibleText(
            text: "to learn Today?",
            color: ThemeApp.textColor,
            fontWeight: FontWeight.normal,
            fontSize: 35,
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
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Wrap(
              spacing: 15.0,
              runSpacing: 15.0,
              children: [
                CircleAvatarWithText(
                  imageUrl: "assets/images/colori.png",
                  text: "Colors",
                ),
                CircleAvatarWithText(
                  imageUrl: "assets/images/hand.png",
                  text: "Body",
                ),
                CircleAvatarWithText(
                  imageUrl: "assets/images/clothing.png",
                  text: "Clothes",
                ),
                CircleAvatarWithText(
                  imageSize: 60,
                  imageUrl: "assets/images/apple.png",
                  text: "Fruits",
                ),
                CircleAvatar(
                  backgroundColor: ThemeApp.pageColor,
                  radius: 30,
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Icon(
                          Icons.keyboard_double_arrow_down,
                          color: ThemeApp.mainColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridviewCategory(),
        ],
      ),
    );
  }

  Row buildHeader(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        picture(controller: controller),
        SizedBox(width: screenWidth * 0.45),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.segment_outlined, size: 40)),
      ],
    );
  }
}
