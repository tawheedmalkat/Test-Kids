import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;



class SignInController extends GetxController {
  var isChecked = false.obs;
  var obscuretext = true.obs;
  RxBool isLoading = false.obs;
  var isLoggIn = true.obs;
  GlobalKey<FormState> scaffoldKey = GlobalKey<FormState>();

  late TextEditingController usernamecontroller;
  late TextEditingController passwordcontroller;


  @override
  void onInit() {
    usernamecontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    usernamecontroller.dispose();
    passwordcontroller.dispose();
    super.onClose();
  }

  void toggleObscureText() {
    obscuretext.toggle();
  }

  bool validateFields() {
    return usernamecontroller.text.isNotEmpty &&
        passwordcontroller.text.isNotEmpty ;
  }

  void toggleCheckbox(bool? value) {
    isChecked.value = value!;
  }

  void updateObscure() {
    obscuretext.value = !obscuretext.value;
  }




  Future<void> logIn(BuildContext context) async {
    if (!scaffoldKey.currentState!.validate()) {
      return;
    }

    try {

      isLoading.value = true;
      update();

      String url = "https://example.com/login";
      final uri = Uri.parse(url);
      final response = await http.post(
        uri,
        body: jsonEncode({
          "username": usernamecontroller.text,
          "password": passwordcontroller.text,

        }),
        headers: {
          "Content-Type": "application/json",
        },
      );

      isLoading(false);
      update();

      if (response.statusCode == 200) {
        final dataresponse = jsonDecode(response.body);
        if (dataresponse['status'] != null && dataresponse['status']!.isNotEmpty) {
          print(response.body);}}

    } catch (e) {
      isLoading(false);
      print("Exception: $e");

    }
  }


}
