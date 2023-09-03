import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jops_que_app/screens/country_screen/country_screen.dart';

import '../../components/custome_button.dart';
import '../../consts/style.dart';
import 'controller/work_type_screen_controller.dart';

class WorkTypesScreen extends StatelessWidget {
  WorkTypesScreen ({Key? key}) : super(key: key);

  final controller = Get.put(WorkTypeScreenController());
  List <String> pics1 = WorkTypeScreenController.images1;
  List <String> pics2 = WorkTypeScreenController.images2;
  List <String> workType1 = WorkTypeScreenController.workTypeName1;
  List <String> workType2 = WorkTypeScreenController.workTypeName2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What type of work are you interested in?',
                style: TextStyle(
                  color: K.blackTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 30.sp
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Tell us what you are interested in so we can customize the app for your needs.',
                style: TextStyle(
                    color: K.greyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ...List.generate(
                        3, (index) => Column(
                          children: [
                            Container(
                            height: 150.h,
                            width: 190.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: const Color(0xffDADADA)
                                ),
                              color:K.creatAccB1Color.withOpacity(0.1)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: const Color(0xffDADADA)
                                        ),
                                      ),
                                      child: Image.asset(
                                          pics1[index]
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h ,
                                  ),
                                  Text(
                                      workType1[index],
                                    style: TextStyle(
                                      color: K.blackTextColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.sp
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ),
                            SizedBox(
                              height: 20.h,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      ...List.generate(
                        3, (index) => Column(
                          children: [
                            Container(
                            height: 150.h,
                            width: 190.w,
                            decoration: BoxDecoration(
                                color:K.creatAccB1Color.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: const Color(0xffDADADA)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color(0xffDADADA)
                                      ),
                                    ),
                                    child: Image.asset(
                                      pics2[index]
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h ,
                                  ),
                                  Text(
                                      workType2[index],
                                    style: TextStyle(
                                        color: K.blackTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.sp
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ),
                            SizedBox(
                              height: 20.h,
                            )
                          ],
                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              Center(
                child: CustomeButton(
                    text: 'Next',
                    textColor: K.whiteColor,
                    buttonColor: K.blueTextColor,
                    onPressed: (){
                      Get.to(CountryScreen());
                    }
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
