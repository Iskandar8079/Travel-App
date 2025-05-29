import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/utils/app_color.dart';
import 'package:vazifa/utils/media.dart';
import 'package:vazifa/utils/text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueAccent,
              Colors.blue,
              AppColor.splashScreenColor,
              AppColor.splashScreenColor2,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                spacing: 10.w,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAppText(
                    text: "Travel",
                    fontsize: 40,
                    color: AppColor.textcolorWhite,
                  ),
                  SvgPicture.asset(Media.splash_icon),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            RichText(
              text: TextSpan(
                text: "   Find Your Dream\n",
                style: TextStyle(fontSize: 20),
                children: [TextSpan(text: "Destination With Us")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
