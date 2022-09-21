import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottery/core/utils/color_constant.dart';
import '../core/utils/common.dart';
import '../routes/app_pages.dart';


class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxBool watchAd = false.obs;
  RxInt points = 0.obs;
  RxDouble balance = 0.0.obs;
  RxDouble percent = 0.0.obs;

  void startWatchingAds(){
    watchAd.value = true;
    late Timer timer;
    timer = Timer.periodic(Duration(milliseconds:1000),(_){
        percent.value +=10;
        if(percent >= 100){
          timer.cancel();
          percent.value = 0;
          watchAd.value = false;
          points.value = points.value + 10;
          customToast('You Earned 10 Points');
        }
      });
    }

  void convertPoints(){
    balance.value  = points.value/13;
    points.value = 0;
    customToast('Balance updated : ${balance.value.toString()}');
  }



  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();}
}
