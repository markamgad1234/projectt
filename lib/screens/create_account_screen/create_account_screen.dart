import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jops_que_app/components/custome_text_field.dart';
import 'package:jops_que_app/screens/create_account_screen/controller/auth_controller.dart';
import 'package:jops_que_app/screens/work_type_screen/work_types_screen.dart';
import 'package:jops_que_app/screens/login_screen/login_screen.dart';
import 'package:jops_que_app/screens/onboarding_screen/onboarding_first_screen.dart';

import '../../components/custome_button.dart';
import '../../consts/style.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen ({Key? key}) : super(key: key);

  final controller = Get.put(AuthController());
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey formKey = GlobalKey();

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(OnboardindFirstScreen());
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
                    'Create Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 34.sp
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Please create an account to find your dream job',
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
                        print(usernameController.value);
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
                      controller: emailController,
                      prefixIcon : 'assets/images/sms.png',
                      sufixIcon: 'assets/images/Input.png',
                      hintText: 'Email',
                      obSecure: false,
                      type: TextInputType.emailAddress,
                    onChange: (value ) {

                    },
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
                    height: 80.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
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
                        text: 'Create Account',
                        textColor: K.greyColor,
                        buttonColor: K.creatAccB1Color ,
                        onPressed: (){
                          Get.to(WorkTypesScreen());
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
                        '  Or Sign up With Account  ',
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
