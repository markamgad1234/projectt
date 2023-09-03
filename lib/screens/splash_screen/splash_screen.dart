import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jops_que_app/components/custome_ellipse_container.dart';
import 'package:jops_que_app/screens/onboarding_screen/onboarding_first_screen.dart';
import '../../consts/style.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen ({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
        const Duration (seconds: 5), (){
          Navigator.pushReplacement(
              context ,
              MaterialPageRoute(
                  builder: (context) => OnboardindFirstScreen(),
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
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children:[
                  CustomeCircularContainer(
                  left: -180,
                  top: -7,
                  height: 900.h,
                  width: 900.w,
                  color: K.circuleColor.withOpacity(0.3),
                  ),
                  CustomeCircularContainer(
                  left: -100,
                  top: 80,
                  height: 700.h,
                  width: 700.w,
                  color: K.circuleColor.withOpacity(0.4),
                  ),
                  CustomeCircularContainer(
                      left: 3,
                      top: 190,
                      height: 350,
                      width: 350,
                      color: K.circuleColor.withOpacity(0.5),
                  ),
                  CustomeCircularContainer(
                      left: 65,
                      top: 250,
                      height: 230,
                      width: 230,
                      color: K.circuleColor,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'J',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28
                          ),
                        ),
                        Image.asset(
                          'assets/images/search-status.png'
                        ),
                        const Text(
                          'BSQUE',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 28
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


