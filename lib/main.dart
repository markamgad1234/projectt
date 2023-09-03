import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jops_que_app/screens/country_screen/country_screen.dart';
import 'package:jops_que_app/screens/create_account_screen/create_account_screen.dart';
import 'package:jops_que_app/screens/successful_created_acc_screen/successful_created_account.dart';
import 'package:jops_que_app/screens/work_type_screen/work_types_screen.dart';
import 'package:jops_que_app/screens/forget_password_screen/check_email_screen.dart';
import 'package:jops_que_app/screens/forget_password_screen/create_new_password_screen.dart';
import 'package:jops_que_app/screens/forget_password_screen/forget_password_screen.dart';
import 'package:jops_que_app/screens/forget_password_screen/password_changed_successfully_screen.dart';
import 'package:jops_que_app/screens/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:jops_que_app/screens/home_screen/home_screen.dart';
import 'package:jops_que_app/screens/login_screen/login_screen.dart';
import 'package:jops_que_app/screens/onboarding_screen/onboarding_first_screen.dart';
import 'package:jops_que_app/screens/onboarding_screen/onboarding_second_screen.dart';
import 'package:jops_que_app/screens/onboarding_screen/onboarding_third_screen.dart';
import 'package:jops_que_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: ScreenUtilInit(
        designSize: const Size(450, 926),
        builder: (BuildContext ,Widget) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          //title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'SF Pro Display Bold',
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen(),
        ),
      ),
    );
  }
}




