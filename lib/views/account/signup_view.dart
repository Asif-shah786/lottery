import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../controllers/signup_controller.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/form_validators.dart';
import '../../core/utils/math_utils.dart';
import '../../core/widgets/custom_toolbar.dart';
import '../../routes/app_pages.dart';

class SignupView extends GetWidget<SignupController> {
  const SignupView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: kScaffoldBackgroundColor
    // ));
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          children: [
            SizedBox(height: getVerticalSize(50.00)),
            Image.asset("assets/images/logo_all.png",
              height: getVerticalSize(200.00),
              width: getVerticalSize(300.00),
            ),
            SizedBox(height: getVerticalSize(15.00)),
            const Text(
              'SIGN UP',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: getVerticalSize(5.00)),
            const Text(
              'Welcome to Lottery. create your account and start earning money',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: kSubTitleColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: getVerticalSize(5.00)),
            Form(
                key: controller.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Name',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: controller.nameController,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'John Doe',
                        isDense: true,
                        hintStyle:
                        TextStyle(fontSize: 14.0, color: kGreyLightColor),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: kGreyLightColor, width: 1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: kPrimaryColor, width: 1)),
                      ),
                      validator: nameValidator,
                    ),
                    SizedBox(height: getVerticalSize(10.00)),
                    const Text('Email',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        hintText: 'john@gmail.com',
                        isDense: true,
                        hintStyle:
                        TextStyle(fontSize: 14.0, color: kGreyLightColor),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: kGreyLightColor, width: 1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: kPrimaryColor, width: 1)),
                      ),
                      validator: emailValidator,
                    ),
                    SizedBox(height: getVerticalSize(10.00)),
                    const Text('Password',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: controller.passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'set password',
                        isDense: true,
                        hintStyle:
                        TextStyle(fontSize: 14.0, color: kGreyLightColor),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: kGreyLightColor, width: 1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: kPrimaryColor, width: 1)),
                      ),
                      validator: passwordValidator,
                    ),
                    SizedBox(height: getVerticalSize(10.00)),
                  ],
                )),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.BOTTOMNAVIGATIONTABS),
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                      color: kWhiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20)),
              child: const Text(
                'Sign Up',
              ),
            ),
            Container(
              width: context.width,
              padding: EdgeInsets.symmetric(vertical: getVerticalSize(20.00)),
              child: RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(
                          text: "Already have an account? ", style: TextStyle(color: kSubTitleColor, fontSize: 14, fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: "Sign in",
                          recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                          style: const TextStyle(color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w600))
                    ]),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
    );
  }
}
