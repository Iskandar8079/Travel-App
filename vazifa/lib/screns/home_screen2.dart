import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/screns/home_screen.dart';
import 'package:vazifa/utils/app_color.dart';
import 'package:vazifa/utils/media.dart';

import '../utils/text_style.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              builStack(context: context),
              SizedBox(height: 30.h),
              Row(
                spacing: 30.w,
                children: [
                  buildAppText(text: "Overview", fontsize: 20),
                  buildAppText(
                    text: "Details",
                    fontsize: 14,
                    color: AppColor.textColor,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildRow(svgPath: Media.clock2, text: "8 hours"),
                  buildRow(svgPath: Media.bulut, text: "16 C"),
                  buildRow(svgPath: Media.yulduzcha2, text: "4.5"),
                ],
              ),
              SizedBox(height: 25.h),
              buildAppText(
                text:
                    "This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to ",
                fontsize: 13,
              ),
              SizedBox(height: 25.h),
              builElevatedButton(),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton builElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.textColorBlack,
        fixedSize: Size(double.infinity, 50.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 65.w, vertical: 15.h),
        child: Row(
          spacing: 15.w,
          children: [
            buildAppText(
              text: "Book Now",
              fontsize: 18,
              color: AppColor.textcolorWhite,
            ),
            SvgPicture.asset(Media.telegram, color: AppColor.textcolorWhite),
          ],
        ),
      ),
    );
  }

  Row buildRow({required String svgPath, required String text}) {
    return Row(
      spacing: 7.w,
      children: [
        Container(
          width: 35.w,
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.numberColor.withOpacity(0.5),
          ),
          child: Center(
            child: SizedBox(
              width: 15.w,
              height: 25.h,
              child: SvgPicture.asset(svgPath),
            ),
          ),
        ),
        buildAppText(text: text, color: AppColor.numberColor, fontsize: 12),
      ],
    );
  }

  Stack builStack({required BuildContext context}) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 290.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Media.mountain2),
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
                    top: 6.h,
                    bottom: 5.h,
                  ),
                  child: Column(
                    children: [
                      Row(
                        spacing: 64.w,
                        children: [
                          buildAppText(
                            text: "Andes Mountain",
                            fontsize: 17,
                            color: AppColor.whiteColor,
                          ),
                          buildAppText(
                            text: "Price",
                            color: AppColor.numberColor,
                            fontsize: 10,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Media.location),
                          SizedBox(width: 5.w),
                          buildAppText(
                            text: "South, America",
                            fontsize: 11,
                            color: AppColor.textColor,
                          ),
                          SizedBox(width: 85.w),
                          RichText(
                            text: TextSpan(
                              text: "\$",
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColor.textColor,
                              ),
                              children: [
                                TextSpan(
                                  text: "230",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                              ],
                            ),
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
                    size: 25,
                    Icons.bookmark_outline,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 16.w,
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
                  alignment: Alignment.center,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  icon: Icon(
                    size: 20,
                    Icons.arrow_back_ios,
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
