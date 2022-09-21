import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../core/utils/progress_dialog_utils.dart';
import '../routes/app_pages.dart';
import 'home_controller.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  // final getStorage = GetStorage();

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();

  login(){
    if(!formKey.currentState!.validate()) return;
    Get.offAllNamed(Routes.BOTTOMNAVIGATIONTABS,);
  }


  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

}
