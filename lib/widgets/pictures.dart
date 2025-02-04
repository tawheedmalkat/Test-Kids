
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helpers/Constants/Colors.dart';
import '../Modules/Main-Page/Home-Controller.dart';

class picture extends StatelessWidget {
  const picture({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0, left: 5),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: ThemeApp.clothingColor,
            width: 1.0,
          ),
        ),
        child: InkWell(
          onTap: () async {
            await controller.pickImage();

          },

          child: CircleAvatar(
            backgroundColor: Colors.blueGrey.withOpacity(0.1),
            radius: 25,
            backgroundImage: controller.imageFile != null
                ? FileImage(controller.imageFile!)
                : null,
            child: controller.imageFile == null
                ? Icon(
              Icons.camera_alt_outlined,
              size: 25,
              color: ThemeApp.clothingColor,
            )
                : null,
          ),
        ),
      ),
    );
  }
}
