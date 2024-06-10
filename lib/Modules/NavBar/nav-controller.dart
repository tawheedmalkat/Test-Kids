import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController with SingleGetTickerProviderMixin {
  late int tabindex;
  late PageController pageController;
  late AnimationController animationController;

  @override
  void onInit() {
    super.onInit();
    tabindex = 0;
    pageController = PageController(initialPage: tabindex);
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
  }

  void chagetabindex(int index) {
    tabindex = index;
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    update();
  }

  @override
  void dispose() {
    pageController.dispose();
    animationController.dispose();
    super.dispose();
  }
}
