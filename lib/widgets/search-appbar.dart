import 'package:englishkids/Helpers/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ContainerSearch extends StatelessWidget {
  const ContainerSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5, offset: Offset(0, 3))], // إضافة ظل
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: Get.locale == Locale('ar') ? 0.0 : 5.0,
              right: Get.locale == Locale('ar') ? 0.0 : 10.0,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  color: ThemeApp.mainColor,
                  size: 20,
                ),
                Text(
                  "Search ....".tr,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
