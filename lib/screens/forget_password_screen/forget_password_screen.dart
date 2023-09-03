import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jops_que_app/screens/forget_password_screen/check_email_screen.dart';
import 'package:jops_que_app/screens/login_screen/login_screen.dart';

import '../../components/custome_button.dart';
import '../../components/custome_text_field.dart';
import '../../consts/style.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen ({Key? key}) : super(key: key);
  final emailController = TextEditingController();

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
                          Get.to(LoginScreen());
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
                    'Reset Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 36.sp
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Enter the email address you used when you joined and we\'ll send you instructions to reset your password.',
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
                    controller: emailController,
                    prefixIcon : 'assets/images/sms.png',
                    sufixIcon: 'assets/images/Input.png',
                    hintText: 'Email',
                    obSecure: false,
                    type: TextInputType.emailAddress, onChange: (String ) {  },
                  ),

                  SizedBox(
                    height: 400.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You remember your password ',
                        style: TextStyle(
                            color: K.hintTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(LoginScreen());
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: K.blueTextColor,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),


                    ],
                  ),

                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: CustomeButton(
                        text: 'Request password reset',
                        textColor: K.whiteColor,
                        buttonColor: K.blueTextColor ,
                        onPressed: (){
                          Get.to(CheckEmailScreen());
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
