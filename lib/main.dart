import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Helpers/Constants/routs.dart';



void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,


      initialRoute: RoutsPage.signinscreen,
      getPages:RoutsPage.routes ,
    );
  }
}
