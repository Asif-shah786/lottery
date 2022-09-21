import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottery/controllers/home_controller.dart';
import 'package:lottery/controllers/profile_controller.dart';

import '../../../core/utils/math_utils.dart';
import '../../../core/widgets/custom_toolbar.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/common.dart';

class ProfileView extends GetView<HomeController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: 'Profile',
        backFlag: true,
        profileActive: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Container(
                  height: getVerticalSize(150),
                  width: getVerticalSize(150),
                  child: const CircleAvatar(
                    radius: 75,
                    backgroundColor: kPrimaryColor,
                    child: CircleAvatar(
                      radius: 71,
                      backgroundImage: AssetImage(
                        'assets/images/user_profile.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getVerticalSize(10),
                ),
                Obx(() => ElevatedButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                      disabledBackgroundColor: kPrimaryColor,
                      disabledForegroundColor: Colors.black,
                      fixedSize: (Size(getVerticalSize(130), getVerticalSize(40))),
                      backgroundColor: Colors.yellow.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  child: FittedBox(child: Text('Balance  ${(controller.balance.value).toStringAsFixed(2)} \$',
                    style: const TextStyle(fontSize: 18, color: Colors.white),)),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(20)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Name',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              )),
                          Text('John Doe',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                      const Divider(color: Colors.black54,thickness: 1.5,),
                      SizedBox(
                          height: getVerticalSize(10)
                      ),
                      const Text('Enter Your PayPal Email below to Start Withdraw',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 22,
                          )),
                      const TextField(
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: 'Email : asif@gmail.com',
                          hintStyle:
                          TextStyle(fontSize: 14.0, color: Colors.black54, fontWeight: FontWeight.w700),
                          enabledBorder: UnderlineInputBorder(
                          ),
                          focusedBorder: UnderlineInputBorder(
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    controller.balance.value = 0;
                    customToast('Withdraw Started to your Email....');
                  },
                  style: TextButton.styleFrom(
                      disabledBackgroundColor: kPrimaryColor,
                      disabledForegroundColor: Colors.black,
                      fixedSize: (Size(getVerticalSize(130), getVerticalSize(40))),
                      backgroundColor: Colors.yellow.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  child: const Text('Withdraw',
                    style: TextStyle(fontSize: 14, color: Colors.white),),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
