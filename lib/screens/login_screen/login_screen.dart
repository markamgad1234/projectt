import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jops_que_app/screens/create_account_screen/create_account_screen.dart';
import 'package:jops_que_app/screens/forget_password_screen/forget_password_screen.dart';

import '../../components/custome_button.dart';
import '../../components/custome_text_field.dart';
import '../../consts/style.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen ({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey formKey = GlobalKey();
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 34.sp
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Please login to find your dream job',
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
                    controller: usernameController,
                    onChange: (value){
                    },
                    prefixIcon : 'assets/images/profile.png',
                    sufixIcon: 'assets/images/Input.png',
                    hintText: 'Username',
                    obSecure: false,
                    type: TextInputType.text,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomeTextField(
                    controller: passwordController,
                    prefixIcon : 'assets/images/lock.png',
                    sufixIcon: 'assets/images/eye-slash.png',
                    hintText: 'Password',
                    obSecure: true,
                    type: TextInputType.text,
                    onChange: (value ) {  },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                            value: checkBoxValue,
                            activeColor: K.blueTextColor  ,
                            onChanged:(newValue){
                              checkBoxValue = newValue!;
                            }
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          color:  K.blackTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp
                        ),
                      ),
                      SizedBox(
                        width: 95.w,
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(ForgetPasswordScreen());
                        },
                        child: const Text(
                          'Forget password?',
                          style: TextStyle(
                            color: K.blueTextColor
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an account? ',
                        style: TextStyle(
                            color: K.hintTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(CreateAccountScreen());
                        },
                        child: const Text(
                          'Register',
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
                        text: 'Login',
                        textColor: K.greyColor,
                        buttonColor: K.creatAccB1Color ,
                        onPressed: (){
                        }
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                          height: 8.0,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        '  Or Login With Account  ',
                        style: TextStyle(
                            color: K.greyColor,
                            fontSize: 16.sp
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                          height: 8.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 70.h,
                        width: 190.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xffDADADA)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                'assets/images/google.png'
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: K.googleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 70.h,
                        width: 190.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xffDADADA)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                'assets/images/Facebook.png'
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  color: K.googleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
