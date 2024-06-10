import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {

      File? imageFile;


      Future<void> pickImage() async {
        final picker = ImagePicker();
        final pickedFile = await picker.pickImage(source: ImageSource.gallery);
        if (pickedFile != null) {
          imageFile = File(pickedFile.path);
          update();
        } else {
          print('No image selected.');
        }}


  @override
  void onInit() {
    super.onInit();

  }



  @override
  void dispose() {

  }


}
