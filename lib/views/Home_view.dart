import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottery/controllers/home_controller.dart';

import '../../../core/utils/math_utils.dart';
import '../../../core/widgets/custom_toolbar.dart';
import '../core/utils/color_constant.dart';
import 'package:percent_indicator/percent_indicator.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: 'Home',
        backFlag: true,
        profileActive: false,
      ),
      body: Obx(() =>Column(
        children: [Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                        disabledBackgroundColor: Colors.yellow.shade800,
                        disabledForegroundColor: Colors.black,
                        padding: EdgeInsets.zero,
                        fixedSize: (Size(getVerticalSize(130), getVerticalSize(50))),
                        backgroundColor: Colors.yellow.shade800,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)
                        )
                    ),
                    child: FittedBox(child: Text('Points ${controller.points.value.toString()}',

                      style: const TextStyle(fontSize: 18),)),
                  )
                ],),
              const SizedBox(height: 20,),
              const Text('Watch Ads To Earn Points', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
              const SizedBox(height: 20,),
              !controller.watchAd.value?
              Container(
                  height: getHorizontalSize(200),
                  width: getHorizontalSize(400),
                  decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor, width: 4),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(16) //                 <--- border radius here
                    ),
                  ),
                  child : const Center(child: Text(
                    'Click Bellow button to \nstart watching ads',
                    textAlign: TextAlign.center,
                  ),)) :
              Container(
                height: getHorizontalSize(200),
                width: getHorizontalSize(400),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/google_ads.png')
                  ),
                  border: Border.all(color: kPrimaryColor, width: 4),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(16) //                 <--- border radius here
                  ),
                ),
                child: CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 10.0,
                  animation: true,
                  percent: controller.percent/100,
                  center: Text(
                    "${controller.percent.value}%",
                    style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  backgroundColor: Colors.yellowAccent.shade700,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.black54,
                ),
              ),
              SizedBox(height: getVerticalSize(20),),
              const Text('Do you wants to watch Ads ?',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),),
              SizedBox(height: getVerticalSize(20),),
              ElevatedButton(onPressed: () => controller.startWatchingAds(),
                style: TextButton.styleFrom(
                    fixedSize: (Size(getVerticalSize(150), getVerticalSize(50))),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                    )
                ),
                child: const Text('Play Ads'),
              ),
              SizedBox(height: getVerticalSize(20),),
              const Text('Click below button to convert points to credits',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),),
              ElevatedButton(onPressed: () => controller.convertPoints(),
                style: TextButton.styleFrom(
                    fixedSize: (Size(getVerticalSize(300), getVerticalSize(50))),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                    )
                ),
                child: const Text('Convert Points'),
              ),
            ],
          ),
        ),]
      ))
    );
  }
}


// body: Padding(
// padding: const EdgeInsets.all(16.0),
// child: Center(
// child: Column(
// children: [
// SizedBox(height: 50,),
// Container(
// alignment: Alignment.center,
// height: getVerticalSize(150),
// width: getVerticalSize(150),
// child: const CircleAvatar(
// radius: 75,
// backgroundColor: kPrimaryColor,
// child: CircleAvatar(
// radius: 68,
// backgroundImage: AssetImage(
// 'assets/images/user_profile.png',
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(20.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: const [
// SizedBox(height: 50,),
// Text('Name',
// style: TextStyle(
// height: 1.2,
// wordSpacing: 1.0,
// color: kPrimaryColor,
// fontSize: 26,
// fontWeight: FontWeight.w800,
// )),
// Text('John Doe',
// overflow: TextOverflow.ellipsis,
// style: TextStyle(fontSize: 16.0, color: kGreyLightColor, fontWeight: FontWeight.w600),),
// SizedBox(height: 10,),
// Text('Email',
// style: TextStyle(
// height: 1.2,
// wordSpacing: 1.0,
// color: kPrimaryColor,
// fontSize: 26,
// fontWeight: FontWeight.w800,
// )),
// Text('johndoe98@gmail.com',
// overflow: TextOverflow.ellipsis,
// style: TextStyle(fontSize: 16.0, color: kGreyLightColor, fontWeight: FontWeight.w600),),
// SizedBox(height: 10,),
// Text('Phone Number',
// style: TextStyle(
// height: 1.2,
// wordSpacing: 1.0,
// color: kPrimaryColor,
// fontSize: 26,
// fontWeight: FontWeight.w800,
// )),
// Text('+69-2345667254',
// overflow: TextOverflow.ellipsis,
// style: TextStyle(fontSize: 16.0, color: kGreyLightColor, fontWeight: FontWeight.w600),),
// ],
// ),
// )
//
// ],
// ),
// ),
// )