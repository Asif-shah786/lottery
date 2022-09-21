import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/app_pages.dart';
import '../utils/color_constant.dart';
import '../utils/math_utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String? titleText;
  bool backFlag;
  bool profileActive;

  CustomAppBar(
      {Key? key,
      this.titleText,
      required this.backFlag,
      required this.profileActive})
      : super(key: key);

  @override //56 default
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        titleText ?? '',
        textAlign: TextAlign.center,
      ),
      iconTheme: const IconThemeData(color: kPrimaryColor),
      elevation: 0,
      backgroundColor: kPrimaryColor,
      shadowColor: Colors.grey.shade100,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
      ),
    );
  }
}
