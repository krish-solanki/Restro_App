import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';

class AppTextstyle {
  static TextStyle splashTextStyle() {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700, // SemiBold
      fontSize: 28.sp,
      color: AppColors.actionPrimaryColor,
    );
  }

  static TextStyle reserve(bool isColor) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600, // SemiBold
      fontSize: 18.sp,
      color:
          isColor ? AppColors.textPrimaryColor : AppColors.actionPrimaryColor,
    );
  }

  static TextStyle headerText() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 24.sp,
        color: AppColors.textPrimaryColor);
  }

  static TextStyle hintText() {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      color: AppColors.textSecondaryColor,
    );
  }

  static TextStyle linkTextStyle() {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontSize: 10.sp,
      color: AppColors.textSecondaryColor,
      decoration: TextDecoration.underline,
    );
  }

  static TextStyle regiserLinkStyle(bool isColor, bool isSmailSize) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontSize: isSmailSize ? 12.sp : 14.sp,
      color:
          isColor ? AppColors.actionPrimaryColor : AppColors.textSecondaryColor,
    );
  }

  static TextStyle loginButtonStyle() {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      color: AppColors.whiteColor,
    );
  }

  static TextStyle forgotPasswordStyle() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 28.sp,
        color: AppColors.textPrimaryColor);
  }

  static TextStyle forgotPasswordHintStyle() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
        color: AppColors.textPrimaryColor);
  }
}
