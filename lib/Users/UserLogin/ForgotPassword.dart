import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';
import 'package:restro_table_booking_app/Users/UserLogin/Login.dart';

class UserForgotpassword extends StatelessWidget {
  const UserForgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          color: AppColors.backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 70.sp,
                height: 70.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('images/logo_org_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'ReserveNow',
                style: AppTextstyle.reserve(false),
              ),
              Text(
                'Forgot Password?',
                style: AppTextstyle.forgotPasswordStyle(),
              ),
              SizedBox(height: 5.sp),
              Container(
                width: ScreenUtil().screenWidth - 40,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Enter Your Registered Email Below to receive a password reset link',
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    style: AppTextstyle.forgotPasswordHintStyle(),
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.inputBorderColor, // Border color #E0E0E0
                    width: 3,
                  ),
                ),
                height: 56.sp,
                width: ScreenUtil().screenWidth - 32,
                padding: const EdgeInsets.only(left: 16),
                child: Center(
                  child: TextFormField(
                    style: AppTextstyle.hintText(),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
                        hintText: "Enter Email",
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              Container(
                height: 56,
                width: Dimensions.fullWidth - 32,
                decoration: BoxDecoration(
                    color: AppColors.actionPrimaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  'Sent Reset Link',
                  style: AppTextstyle.loginButtonStyle(),
                )),
              ),
              SizedBox(height: 10.sp),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Remember Your Password?',
                    style: AppTextstyle.forgotPasswordHintStyle(),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserLogin(),
                        )),
                    child: Text(' Log in',
                        style: AppTextstyle.regiserLinkStyle(false, true)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
