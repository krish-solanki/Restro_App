import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';

class Spleshscreen extends StatelessWidget {
  const Spleshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(bottom: ScreenUtil().screenHeight / 4),
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                // The Material widget was removed from here
                child: Container(
                    decoration: BoxDecoration(color: AppColors.backgroundColor),
                    child: Image.asset(
                      'images/logo.png',
                      fit: BoxFit.cover,
                      height: ScreenUtil().screenHeight / 3,
                    )),
              ),
              SizedBox(height: ScreenUtil().scaleHeight * 0.01),
              Text(
                'ReserveNow',
                style: AppTextstyle.splashTextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
