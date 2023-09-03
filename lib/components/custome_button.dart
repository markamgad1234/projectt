import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';

import '../consts/style.dart';
import '../screens/onboarding_screen/onboarding_second_screen.dart';

class CustomeButton extends StatelessWidget {

  Color? buttonColor;
  Function()? onPressed;
  String? text;
  Color? textColor;

  CustomeButton({
    Key? key,
    required this.text,
    this.textColor,
    required this.onPressed,
    this.buttonColor
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385.w,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(
              color: textColor
          ),
        ),
      ),
    );
  }
}
