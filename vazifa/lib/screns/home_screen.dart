import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/screns/home_screen2.dart';
import 'package:vazifa/utils/app_color.dart';
import 'package:vazifa/utils/media.dart';
import 'package:vazifa/utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //   floatingActionButton: FloatingActionButton(onPressed: () {
        //     Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => HomeScreen2()),
        // );
        //   },),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 34),
          child: buildColumn(),
        ),

        bottomNavigationBar: buildButton(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildAppText(
                  text: "Hi, David 👋",
                  color: AppColor.textColorBlack,
                  fontsize: 25,
                ),
                SizedBox(height: 9.h),
                buildAppText(
                  text: "Explore the world",
                  fontsize: 16,
                  color: AppColor.textColorBlack.withOpacity(0.4),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              backgroundImage: AssetImage(Media.rasm),
              minRadius: 25.r,
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Container(
          width: double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.borderColor),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              children: [
                buildAppText(
                  text: "Search places",
                  fontsize: 15,
                  color: AppColor.textColor,
                ),
                SizedBox(width: 90.w),
                SvgPicture.asset(Media.vertikal, height: 35.h),
                SizedBox(width: 25.w),
                SvgPicture.asset(Media.icon),
              ],
            ),
          ),
        ),
        SizedBox(height: 25.h),
        Row(
          children: [
            buildAppText(text: "Popular places", fontsize: 20),
            Spacer(),
            buildAppText(
              text: "View all",
              fontsize: 16,
              color: AppColor.textColor,
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 120.w,
              height: 45.h,
              decoration: BoxDecoration(
                color: AppColor.textColorBlack,
                borderRadius: BorderRadius.circular(20),
              ),
              child: buildAppText(
                text: "Most Viewed",
                color: AppColor.whiteColor,
              ),
            ),
            buildAppText(text: "Nearby", color: AppColor.textcolorWhite),
            buildAppText(text: "Latest", color: AppColor.textcolorWhite),
          ],
        ),
        SizedBox(height: 25.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildStack(imagePath: Media.mountain),
              SizedBox(width: 18.w),
              buildStack(imagePath: Media.mountain2),
            ],
          ),
        ),
      ],
    );
  }

  BottomNavigationBar buildButton() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset(Media.home),
              Positioned(
                top: 27.w,
                left: 7.w,
                child: Container(
                  width: 7.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          label: "",
        ),
        BottomNavigationBarItem(icon: SvgPicture.asset(Media.clock), label: ""),
        BottomNavigationBarItem(icon: SvgPicture.asset(Media.heart), label: ""),
        BottomNavigationBarItem(icon: SvgPicture.asset(Media.user), label: ""),
      ],
    );
  }

  Stack buildStack({required String imagePath}) {
    return Stack(
      children: [
        Container(
          width: 250.w,
          height: 260.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        Positioned(
          bottom: 20.h,
          left: 25.w,
          right: 25.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.textColorBlack.withOpacity(0.3),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 12.w,
                    top: 11.h,
                    bottom: 5.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Mount Fuji,",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColor.textcolorWhite,
                          ),
                          children: [
                            TextSpan(
                              text: " Tokyo",
                              style: TextStyle(color: AppColor.textColor),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Media.location),
                          SizedBox(width: 8.w),
                          buildAppText(
                            text: "Tokyo, Japan",
                            fontsize: 13,
                            color: AppColor.textColor,
                          ),
                          SizedBox(width: 25.w),
                          SvgPicture.asset(Media.yulduzcha),
                          Spacer(),
                          buildAppText(
                            text: "4.8",
                            color: AppColor.numberColor,
                            fontsize: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 16.w,
          top: 12.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                width: 45.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColor.textColorBlack.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    size: 30,
                    Icons.favorite_border,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
