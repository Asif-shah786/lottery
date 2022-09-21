import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../controllers/splash_controller.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../routes/app_pages.dart';

class SplashView extends GetView<SplashController> {

  // void afterFirstLayout(BuildContext context) => controller.checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash.png",
              height: getVerticalSize(200.00),
              width: getVerticalSize(300.00),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: getVerticalSize(300.00),
              child: const Text(
                textAlign : TextAlign.center,
                'Let\'s make some money...',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

