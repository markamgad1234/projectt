import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jops_que_app/screens/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:jops_que_app/screens/country_screen/country_screen.dart';

import '../../components/custome_button.dart';
import '../../consts/style.dart';

class SuccessfulCreatedAccount extends StatefulWidget {
  SuccessfulCreatedAccount ({Key? key}) : super(key: key);

  @override
  State<SuccessfulCreatedAccount> createState() => _SuccessfulCreatedAccountState();
}

class _SuccessfulCreatedAccountState extends State<SuccessfulCreatedAccount> {
  @override
  void initState() {
    Timer(
        const Duration (seconds: 3), (){
      Navigator.pushReplacement(
          context ,
          MaterialPageRoute(
            builder: (context) => BottomNavBarScreen(),
          )
      );
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Get.to(CountryScreen());
                },
                child: const Icon(
                    Icons.arrow_back_rounded
                ),
              ),
              SizedBox(
                height: 130.h,
              ),

              Center(
                child: Image.asset(
                    'assets/images/Success Account Ilustration.png',
                ),
              ),

              SizedBox(
                height:20.h ,
              ),

              Center(
                child: Text(
                  'Your account has been set up!',
                  style: TextStyle(
                      color: K.blackTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 28.sp
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Text(
                  'We have customized feeds according to your ',
                  style: TextStyle(
                      color: K.greyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp
                  ),
                ),
              ),
              Center(
                child: Text(
                  ' preferences',
                  style: TextStyle(
                      color: K.greyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp
                  ),
                ),
              ),

              Spacer(),
              Center(
                child: CustomeButton(
                    text: 'Get Started',
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
