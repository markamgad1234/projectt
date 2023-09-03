import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jops_que_app/screens/home_screen/controller/home_controller.dart';
import 'package:jops_que_app/screens/home_screen/home_screen.dart';

import '../../consts/style.dart';

class BottomNavBarScreen extends StatelessWidget {
  BottomNavBarScreen({Key? key}) : super(key: key);

  final currentIndex = 0;

  final controller = Get.put(HomeController());
  List <Widget> screens = [
    HomeScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(()
    =>
        Center(
          child: screens.elementAt(
              controller.selectIndex
          ),
        ),
        ),
      bottomNavigationBar: Obx(() =>
          BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/images/home.png',
                    height: 25,
                    color: controller.selectIndex == 0
                        ? K.blueTextColor
                        : K.greyColor.withOpacity(.5)
                ),
                label: 'Home',
              ),

              BottomNavigationBarItem(
                  icon: Image.asset(
                      'assets/images/message.png',
                      height: 25,
                      color: controller.selectIndex == 1
                          ? K.blueTextColor
                          : K.greyColor.withOpacity(.5)),
                  label: 'Messages'
              ),

              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/images/briefcase.png',
                    height: 25,
                    color: controller.selectIndex == 2
                        ? K.blueTextColor
                        : K.greyColor.withOpacity(.5)),
                label: 'Applied',
              ),

              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/images/archive-minus.png',
                    height: 25,
                    color: controller.selectIndex == 3
                        ? K.blueTextColor
                        : K.greyColor.withOpacity(.5)),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/images/profile.png',
                    height: 25,
                    color: controller.selectIndex == 4
                        ? K.blueTextColor
                        : K.greyColor.withOpacity(.5)),
                label: 'Profile',
              ),

            ],
            selectedItemColor: K.blueTextColor,
            unselectedItemColor: K.greyColor.withOpacity(.5),
            backgroundColor: K.whiteColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectIndex!,
            onTap: (index) {
              controller!.select(index);
            },
          ),
          )
    );
  }
}
