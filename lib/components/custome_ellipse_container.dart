import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/style.dart';

class CustomeCircularContainer extends StatelessWidget{

  double? left;
  double? top;
  double? height;
  double? width;
  Color? color;

  CustomeCircularContainer({
    Key? key,
    required this.left,
    required this.top,
    required this.height,
    required this.width,
    required this.color
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
   return Positioned(
     left: left,
     top: top,
     child: Container(
       height: height,
       width: width,
       decoration: BoxDecoration(
           shape: BoxShape.circle,
           color: color
       ),
     ),
   );
  }
}