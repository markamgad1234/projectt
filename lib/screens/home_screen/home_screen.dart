import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../components/custome_button.dart';
import '../../consts/style.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi , ',
                        style: TextStyle(
                            color: K.blackTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 26.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Create a better future to your self here',
                        style: TextStyle(
                            color: K.greyColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/Notification.png'),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
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
                  onSubmitted: (value) => () {},
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintStyle: TextStyle(color: K.greyColor.withOpacity(0.5)),
                    hintText: 'Search...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Color(0xffDADADA)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: K.blueColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Color(0xffDADADA)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Suggested Job',
                    style: TextStyle(
                        color: K.blackTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all',
                      style: TextStyle(
                          color: K.blueTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              CarouselSlider.builder(
                itemCount: 2,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: 350.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                      color: K.darkBlueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/Zoom Logo.png'),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Product Designer',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.sp,
                                        color: K.whiteColor),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    'Zoom . United States',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: K.whiteColor.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 60.w,
                              ),
                              Image.asset(
                                'assets/images/archive-minus.png',
                                color: K.whiteColor,
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
                                height: 40.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: K.whiteColor.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Full time',
                                    style: TextStyle(
                                        color: K.whiteColor, fontSize: 14.sp),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: K.whiteColor.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Remote',
                                    style: TextStyle(
                                        color: K.whiteColor, fontSize: 14.sp),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: K.whiteColor.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Design',
                                    style: TextStyle(
                                        color: K.whiteColor, fontSize: 14.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$12K-15K',
                                style: TextStyle(
                                    color: K.whiteColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 26.sp),
                              ),
                              Text(
                                '/Month',
                                style: TextStyle(
                                    color: K.whiteColor.withOpacity(0.5),
                                    fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Container(
                                width: 120.w,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: K.blueTextColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Apply now',
                                    style: TextStyle(
                                        color: K.whiteColor, fontSize: 14.sp),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: false,
                  height: 220.h,
                  viewportFraction: 0.9,
                  //enlargeCenterPage: true,
                  // enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {
                    print(index);
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Job',
                    style: TextStyle(
                        color: K.blackTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all',
                      style: TextStyle(
                          color: K.blueTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Twitter Logo.png'),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Text(
                        'Senior UI Designer',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: K.blackTextColor),
                      ),
                      Text(
                        'Twitter . Jakarta,Indonesia',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: K.greyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 130.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/archive-minus.png',
                      color: K.blueTextColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: K.blueColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Full time',
                        style:
                            TextStyle(color: K.blueTextColor, fontSize: 14.sp),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: K.blueColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Remote',
                        style:
                            TextStyle(color: K.blueTextColor, fontSize: 14.sp),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: K.blueColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Design',
                        style:
                            TextStyle(color: K.blueTextColor, fontSize: 14.sp),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$15K',
                        style: TextStyle(
                            color: K.greenTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp),
                      ),
                      Text(
                        '/Month',
                        style: TextStyle(color: K.greyColor, fontSize: 14.sp),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Expanded(
                child: Divider(
                  color: Colors.grey,
                  height: 8.0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Discord Logo.png'),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Text(
                        'Senior UX Designer',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: K.blackTextColor),
                      ),
                      Text(
                        'Discord . Jakarta,Indonesia',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: K.greyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/images/archive-minus.png'),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: K.blueColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Full time',
                        style:
                            TextStyle(color: K.blueTextColor, fontSize: 14.sp),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: K.blueColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Remote',
                        style:
                            TextStyle(color: K.blueTextColor, fontSize: 14.sp),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: K.blueColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Design',
                        style:
                            TextStyle(color: K.blueTextColor, fontSize: 14.sp),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$15K',
                        style: TextStyle(
                            color: K.greenTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp),
                      ),
                      Text(
                        '/Month',
                        style: TextStyle(color: K.greyColor, fontSize: 14.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
