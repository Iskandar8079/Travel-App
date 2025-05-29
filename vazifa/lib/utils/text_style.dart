import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text buildAppText({
  required String text,
  Color? color,
  FontWeight? fontweight,
  double? fontsize,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontweight ?? FontWeight.w600,
      fontSize: fontsize?.sp ?? 16.sp,
    ),
  );
}
