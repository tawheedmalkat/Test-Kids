import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconly/iconly.dart';

import '../../Helpers/Constants/Colors.dart';
import '../Main/Home-Screen.dart';
import '../Prizes/Prize-screen.dart';
import '../Settings/settings-screen.dart';
import 'nav-controller.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(NavBarController());
    return GetBuilder<NavBarController>(
      builder: (controller) => Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              children: [
                _buildPage(HomePage()),
                _buildPage(SettingsPage()),
                _buildPage(PrizesPage()),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: CurvedNavigationBar(
                  backgroundColor: Colors.transparent,
                  color: ThemeApp.mainColor,
                  buttonBackgroundColor: Colors.white,
                  height: 70,
                  animationDuration: Duration(milliseconds: 200),
                  index: controller.tabindex,
                  onTap: controller.chagetabindex,
                  items: [
                    _buildNavigationItem(
                      controller: controller,
                      icon: IconlyBold.home,
                      isSelected: controller.tabindex == 0,
                      label: 'Home'.tr,
                    ),
                    _buildNavigationItem(
                      controller: controller,
                      icon: IconlyBold.setting,
                      isSelected: controller.tabindex == 1,
                      label: 'Settings'.tr,
                    ),
                    _buildNavigationItem(
                      controller: controller,
                      icon: Icons.workspace_premium_sharp,
                      isSelected: controller.tabindex == 2,
                      label: 'Prizes'.tr,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(Widget page) {
    return Container(
      color: Colors.transparent,
      child: page,
    );
  }

  Widget _buildNavigationItem({
    required NavBarController controller,
    required IconData icon,
    required bool isSelected,
    required String label,
  }) {
    return ScaleTransition(
      scale: isSelected
          ? Tween<double>(begin: 0.8, end: 1.0).animate(
        CurvedAnimation(
          parent: controller.animationController!,
          curve: Curves.slowMiddle,
        ),
      )
          : AlwaysStoppedAnimation<double>(1.0),
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: isSelected
            ? Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: 50,
              width: 50,
              child: Icon(
                icon,
                size: 40,
                color: ThemeApp.mainColor,
              ),
            ),
            SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(
                color: ThemeApp.mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
            : Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
