import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jops_que_app/screens/country_screen/controller/country_screen_controller.dart';
import 'package:jops_que_app/screens/successful_created_acc_screen/successful_created_account.dart';

import '../../components/custome_button.dart';
import '../../consts/style.dart';

class CountryScreen extends StatelessWidget {
  CountryScreen ({Key? key}) : super(key: key);

  final controller = Get.put(CountryScreenController());
  List <String> pics = CountryScreenController.images;
  List <String> pics2 = CountryScreenController.images2;
  List <String> text = CountryScreenController.text;
  List <String> text2 = CountryScreenController.text2;

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
                'Where are you preferred location?',
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
                'Let us know, where is the work location you want at this time, so we can adjust it',
                style: TextStyle(
                    color: K.greyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              Center(
                child: Container(
                  height: 50.h,
                  width: 385.w,
                  decoration: BoxDecoration(
                    color: K.creatAccB1Color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Text(
                            'Work From Office',
                          style: TextStyle(
                              color: K.greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp
                          ),
                        ),
                      ),

                      Container(
                        height: 50.h,
                        width: 190.w,
                        decoration: BoxDecoration(
                          color: K.darkBlueColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            'Remote Work',
                            style: TextStyle(
                                color: K.whiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 18.sp
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              Text(
                'Select the country you want for your job',
                style: TextStyle(
                    color: K.greyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              Row(
                children: [
                  Column(
                    children: [
                      ...List.generate(
                        pics.length
                        , (index) => Column(
                        children: [
                          Container(
                            height: 60.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              color: K.creatAccB1Color.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                  color: const Color(0xffDADADA).withOpacity(0.3)
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                      pics[index]
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Center(
                                    child: Text(
                                      text[index],
                                      style: TextStyle(
                                          color: K.blackTextColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.sp
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          )
                        ],
                      ),

                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ...List.generate(
                        pics2.length
                        , (index) => Column(
                        children: [
                          Container(
                            height: 60.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              color: K.creatAccB1Color.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                  color: const Color(0xffDADADA).withOpacity(0.3)
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                      pics2[index]
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Center(
                                    child: Text(
                                      text2[index],
                                      style: TextStyle(
                                          color: K.blackTextColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.sp
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          )
                        ],
                      ),

                      ),
                    ],
                  ),
                ],
              ),


              SizedBox(
                height: 20.h,
              ),
              Center(
                child: CustomeButton(
                    text: 'Next',
                    textColor: K.whiteColor,
                    buttonColor: K.blueTextColor,
                    onPressed: (){
                      Get.to(SuccessfulCreatedAccount());
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
