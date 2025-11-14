import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';

class UserRegister extends StatelessWidget {
  const UserRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: ScreenUtil().screenHeight,
            color: AppColors.backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Reserve',
                      style: AppTextstyle.reserve(true),
                    ),
                    Text(
                      'Now',
                      style: AppTextstyle.reserve(false),
                    ),
                  ],
                ),
                Text('Create Your Account', style: AppTextstyle.headerText()),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color white
                      border: Border.all(
                        color:
                            AppColors.inputBorderColor, // Border color #E0E0E0
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 56.sp,
                    child: Center(
                      child: TextFormField(
                        style: AppTextstyle.hintText(),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          hintText: "Name",
                          border: InputBorder.none, // Remove default border
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color white
                      border: Border.all(
                        color:
                            AppColors.inputBorderColor, // Border color #E0E0E0
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 56.sp,
                    child: Center(
                      child: TextFormField(
                        style: AppTextstyle.hintText(),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          hintText: "Email",
                          border: InputBorder.none, // Remove default border
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color white
                      border: Border.all(
                        color:
                            AppColors.inputBorderColor, // Border color #E0E0E0
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 56.sp,
                    child: Center(
                      child: TextFormField(
                        style: AppTextstyle.hintText(),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          hintText: "Phone Number",
                          border: InputBorder.none, // Remove default border
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color white
                      border: Border.all(
                        color:
                            AppColors.inputBorderColor, // Border color #E0E0E0
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 56.sp,
                    child: Center(
                      child: TextFormField(
                        style: AppTextstyle.hintText(),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: AppColors.whiteColor,
                            hintText: "Password",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.visibility)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color white
                      border: Border.all(
                        color:
                            AppColors.inputBorderColor, // Border color #E0E0E0
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 56.sp,
                    child: Center(
                      child: TextFormField(
                        style: AppTextstyle.hintText(),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          hintText: "Confirm Password",
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Text('I agree to the',
                          style: AppTextstyle.regiserLinkStyle(false, true)),
                      Text(' Terms & Conditions',
                          style: AppTextstyle.regiserLinkStyle(true, true)),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.actionPrimaryColor,
                  ),
                width: ScreenUtil().screenWidth - 32,
                  height: 56.sp,
                  child: Center(
                    child: Text(
                      'Register',
                      style: AppTextstyle.loginButtonStyle(),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: AppTextstyle.regiserLinkStyle(false, false)),
                    Text(' Login',
                        style: AppTextstyle.regiserLinkStyle(true, false)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
