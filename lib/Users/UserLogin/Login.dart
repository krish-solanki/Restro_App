import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';
import 'package:restro_table_booking_app/Users/UserLogin/ForgotPassword.dart';
import 'package:restro_table_booking_app/Users/UserLogin/Register.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: AppColors.backgroundColor,
            height: Dimensions.fullHeight,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: Image.asset('images/logo.png')),
                  Text(
                    'ReserveNow',
                    style: AppTextstyle.reserve(false),
                  ),
                  Text(
                    'Welcome Back',
                    style: AppTextstyle.headerText(),
                  ),
                  SizedBox(height: 10.sp),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20), // Margin from left & right
                    child: TextFormField(
                      style: AppTextstyle.hintText(),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email, // You can change this icon
                          color: Colors.grey, // Optional icon color
                        ),
                        hintText: 'Email',
                        filled: true,
                        fillColor: AppColors.whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20), // Margin from left & right
                    child: TextFormField(
                      style: AppTextstyle.hintText(),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        hintText: 'Password',
                        filled: true,
                        fillColor: AppColors.whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserForgotpassword(),
                              )),
                          child: Text(
                            'Forgot Password?',
                            style: AppTextstyle.linkTextStyle(),
                          ),
                        )),
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: 56.sp,
                    width: Dimensions.fullWidth - 20,
                    decoration: BoxDecoration(
                      color: AppColors.actionPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: AppTextstyle.loginButtonStyle(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: Dimensions.fullWidth - 50,
                    child: const Row(
                      children: [
                        // The left line
                        Expanded(
                          child: Divider(
                            color: Color(0xFFBDBDBD),
                            thickness: 1,
                          ),
                        ),

                        // The "OR" text
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.textSecondaryColor,
                            ),
                          ),
                        ),

                        // The right line
                        Expanded(
                          child: Divider(
                            color: Color(0xFFBDBDBD), // A light gray color
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      height: 56.sp,
                      width: Dimensions.fullWidth - 20,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserRegister(),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/google.png',
                                height: 24, width: 24),
                            SizedBox(width: 10),
                            Text(
                              'Google',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
