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

  static TextStyle locationTextStyle() {
    return TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontSize: 14.sp,
      color: AppColors.whiteColor,
    );
  }

  static TextStyle tabBarTextStyle(bool isColor) {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 10.sp,
        color: isColor ? AppColors.whiteColor : AppColors.blackColor);
  }

  static TextStyle featureRestaurentTextStyle() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 20.sp,
        color: AppColors.blackColor);
  }

  static TextStyle restaurentRating() {
    return TextStyle(
      fontFamily: 'Poppins',
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w700,
      fontSize: 12.sp,
    );
  }

  static TextStyle restaurentName() {
    return TextStyle(
      fontFamily: 'Poppins',
      color: AppColors.blackColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle restaurentFeature(int num, bool isBold) {
    return TextStyle(
      fontFamily: 'Poppins',
      color: num == 0
          ? AppColors.whiteColor
          : num == 1
              ? AppColors.blackColor
              : num == 2
                  ? AppColors.greyColor700
                  : AppColors.whiteColor,
      fontSize: 12.sp,
      fontWeight: isBold ? FontWeight.w700 : FontWeight.w600,
    );
  }

  static TextStyle menuFontStyle(bool isSelected) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: isSelected ? 13.sp : 12.sp,
    );
  }

  static TextStyle seeRestoName() {
    return TextStyle(
        fontFamily: 'Poppins',
        color: AppColors.whiteColor,
        fontSize: 28.sp,
        fontWeight: FontWeight.w700);
  }

  static TextStyle seeRestoSubTitle(bool isBold) {
    return TextStyle(
        fontFamily: 'Poppins',
        color: AppColors.whiteColor,
        fontSize: 14.sp,
        fontWeight: isBold ? FontWeight.w500 : FontWeight.w400);
  }

  static TextStyle seeRestoTabLables() {
    return TextStyle(
        fontFamily: 'Poppins',
        color: AppColors.grayMedium,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500);
  }

  static TextStyle seeRestoSlotText() {
    return TextStyle(
        fontFamily: 'Poppins',
        color: AppColors.grayMedium,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500);
  }

  static TextStyle seeTabBarTextStyle() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 12.sp,
        color: AppColors.whiteColor);
  }

  static TextStyle reviewerName() {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimaryColor,
    );
  }

  static TextStyle reviewerDate() {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondaryColor,
    );
  }

  static TextStyle myBooking() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 20.sp,
        color: AppColors.whiteColor);
  }

  static TextStyle bookinName() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        fontSize: 16.sp,
        color: AppColors.textPrimaryColor);
  }

  static TextStyle bookingDetail() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 10.sp,
        color: AppColors.textSecondaryColor);
  }

  static TextStyle bookingButton() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 12.sp,
        color: AppColors.whiteColor);
  }

  static TextStyle myProfile() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 20.sp,
        color: AppColors.whiteColor);
  }

  static TextStyle myProfileName() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 22.sp,
        color: AppColors.blackColor);
  }

  static TextStyle myProfileSection() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
        color: AppColors.blackColor);
  }

  static TextStyle myProfileUserDetails() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
        color: AppColors.grayMedium);
  }

  static TextStyle myProfileLable() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: AppColors.blackColor);
  }

  static TextStyle myProfileChangePassBtn() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 10.sp,
        color: AppColors.actionPrimaryColor);
  }

  static TextStyle myProfileLogoutBtn() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        fontSize: 14.sp,
        color: AppColors.whiteColor);
  }

  static TextStyle menuTitle() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
        color: AppColors.blackColor);
  }

  static TextStyle menuDescription() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 10.sp,
        color: AppColors.greyColor700);
  }

  static TextStyle menuPrice() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
        color: AppColors.actionPrimaryColor);
  }
}
