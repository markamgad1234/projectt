import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/style.dart';

class CustomeTextField extends StatelessWidget {

  final String? hintText;
  final String? prefixIcon;
  final String? sufixIcon;
  final TextEditingController? controller;
  final void Function(String)? onChange;
  final bool? obSecure;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? type;

  const CustomeTextField ({
    Key? key ,
    required this.controller,
    required this.prefixIcon,
    this.sufixIcon,
    this.inputFormatters,
    required this.hintText,
    required this.obSecure,
    required this.onChange,
    required this.type
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      child: TextField(
        onChanged: onChange,
        keyboardType: type,
        controller: controller,
        //onChanged: onchange,
        obscureText: obSecure!,
        cursorColor: K.blueTextColor,
        //inputFormatters: inputFormatters,
        style: TextStyle(
            color: K.blackTextColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500
        ),
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              '$sufixIcon',
              width: 20.w,
              height: 20.h,
              //fit: BoxFit.fill,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              '$prefixIcon',
              width: 20.w,
              height: 20.h,
              //fit: BoxFit.fill,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: K.hintTextColor,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xffDADADA)
            ),
          ),
          focusedBorder:  const OutlineInputBorder(
            borderSide: BorderSide(
                color: K.blueTextColor
            ),
          ),
        ),
      ),

    );
  }
}
