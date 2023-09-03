import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:jops_que_app/components/custome_button.dart';
import 'package:jops_que_app/screens/create_account_screen/create_account_screen.dart';
import 'package:jops_que_app/screens/onboarding_screen/onboarding_second_screen.dart';
import '../../consts/style.dart';

class OnboardindFirstScreen extends StatelessWidget {

  OnboardindFirstScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'J',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                          Image.asset(
                            'assets/images/search-status.png',
                            width: 16,
                            height: 16,
                          ),
                          const Text(
                            'BSQUE',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),

                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(CreateAccountScreen());
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: K.greyColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/Background.png',
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Find a job , and ',
                            style: TextStyle(
                                color: K.blackTextColor,
                                fontSize: 32,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'start ',
                            style: TextStyle(
                                color: K.blueTextColor,
                                fontSize: 32,
                                fontWeight: FontWeight.w500

                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'building ',
                            style: TextStyle(
                                color: K.blueTextColor,
                                fontSize: 32,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'your career ',
                            style: TextStyle(
                                color: K.blackTextColor,
                                fontSize: 32,
                                fontWeight: FontWeight.w500

                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'from now on ',
                        style: TextStyle(
                            color: K.blackTextColor,
                            fontSize: 32,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Explore over 25.924 available job roles and upgrade your operator now',
                        style: TextStyle(
                            color: K.greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: K.blueTextColor
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: K.blueColor
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: K.blueColor
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: CustomeButton(
                            text: 'Next',
                            textColor: K.whiteColor,
                            buttonColor: K.blueTextColor,
                            onPressed: (){
                              Get.to(OnboardindSecondScreen());
                            }
                        ),
                      ),
                    ],
                  ),
                ),
              ]
          ),
        )
    );
  }
}
