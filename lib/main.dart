import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottery/bindings/splash_binding.dart';

import 'bindings/home_binding.dart';
import 'core/utils/color_constant.dart';
import 'routes/app_pages.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      // statusBarColor: kScaffoldBgColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      theme: ThemeData(
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
          fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      // theme: AppStyling.styling,
      title: 'Lottery',
      themeMode: ThemeMode.light,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}