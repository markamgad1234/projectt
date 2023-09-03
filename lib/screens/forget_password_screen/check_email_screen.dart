import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jops_que_app/screens/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';

import '../../components/custome_button.dart';
import '../../consts/style.dart';

class CheckEmailScreen extends StatefulWidget {
  CheckEmailScreen ({Key? key}) : super(key: key);

  @override
  State<CheckEmailScreen> createState() => _CheckEmailScreenState();
}

class _CheckEmailScreenState extends State<CheckEmailScreen> {
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
              SizedBox(
                height: 100.h,
              ),
              Center(
                child: Image.asset(
                  'assets/images/Email Ilustration.png',
                ),
              ),

              SizedBox(
                height:20.h ,
              ),

              Center(
                child: Text(
                  'Check Your Email',
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
                  'We have sent a reset password to your email ',
                  style: TextStyle(
                      color: K.greyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp
                  ),
                ),
              ),
              Center(
                child: Text(
                  ' address',
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
                    text: 'Open email app',
                    textColor: K.whiteColor,
                    buttonColor: K.blueTextColor,
                    onPressed: (){
                      //Get.to(SuccessfulCreatedAccount());
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
