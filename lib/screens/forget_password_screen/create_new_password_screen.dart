import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jops_que_app/screens/forget_password_screen/forget_password_screen.dart';

import '../../components/custome_button.dart';
import '../../components/custome_text_field.dart';
import '../../consts/style.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  CreateNewPasswordScreen ({Key? key}) : super(key: key);
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(ForgetPasswordScreen());
                        },
                        child: const Icon(
                            Icons.arrow_back_rounded
                        ),
                      ),
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
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    'Create new password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 34.sp
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Set your new password so you can login and access Jobsque',
                    style: TextStyle(
                        color: K.greyColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomeTextField(
                    controller: passwordController,
                    prefixIcon : 'assets/images/lock.png',
                    sufixIcon: 'assets/images/eye-slash.png',
                    hintText: 'Password',
                    obSecure: true,
                    type: TextInputType.text, onChange: (String ) {  },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Password must be at least 8 characters ',
                    style: TextStyle(
                        color: K.hintTextColor ,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),

                  CustomeTextField(
                    controller: passwordController,
                    prefixIcon : 'assets/images/lock.png',
                    sufixIcon: 'assets/images/eye-slash.png',
                    hintText: 'Password',
                    obSecure: true,
                    type: TextInputType.text, onChange: (String ) {  },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Both password must match ',
                    style: TextStyle(
                        color: K.hintTextColor ,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),

                  SizedBox(
                    height: 230.h,
                  ),
                  Center(
                    child: CustomeButton(
                        text: 'Reset password',
                        textColor: K.whiteColor,
                        buttonColor: K.blueTextColor ,
                        onPressed: (){
                          //Get.to(WorkTypesScreen());
                        }
                    ),
                  ),







                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
