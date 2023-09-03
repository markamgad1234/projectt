import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../consts/style.dart';

class searchScreen extends StatelessWidget {
  searchScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Obx(() =>  InkWell(
                  onTap: (){},
                  child: const Icon(
                      Icons.arrow_back
                  ),
                ),),
                  Container(
                    height: 60.h,
                    child: TextField(
                      onChanged: (value) {
                        //controller.city = value;
                      },
                      style: const TextStyle(
                        color: K.blackTextColor,
                      ),
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) => (){},
                      decoration: InputDecoration(
                        prefixIcon: const Icon (
                            Icons.search_rounded
                        ),
                        hintStyle: TextStyle(
                            color: K.greyColor.withOpacity(0.5)
                        ),
                        hintText: 'Type something...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color(0xffDADADA)
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: K.blueColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color : Color(0xffDADADA)),
                        ),
                      ),
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
