import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../controllers/bottom_tabs_controller.dart';
import '../controllers/home_controller.dart';
import '../core/utils/color_constant.dart';

class BottomTabs extends GetView<BottomTabsController> {
  const BottomTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(30), topLeft: Radius.circular(30)
          ),
          boxShadow: [ //0xff9B9EA4
            BoxShadow(color: Color(0xff9B9EA4), spreadRadius: 0, blurRadius: 8, blurStyle: BlurStyle.outer),
          ],
        ),
    child: SalomonBottomBar(
      margin : const EdgeInsets.all(12),
          selectedItemColor: kPrimaryColor,
          currentIndex: controller.currentTab.value,
          onTap: (index) => controller.currentTab(index),
          items: [
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home_icon.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/home_icon.svg',
                color: kPrimaryColor,
              ),
              title: const Text('Home'),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person, color: kPrimaryColor,),
              title: const Text('Profile'),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: controller.currentTab.value,
        children: <Widget>[
          controller.bodyWidgets[0],
          controller.bodyWidgets[1],
        ],
      ),
    ));
  }
}
