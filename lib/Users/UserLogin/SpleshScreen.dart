import 'package:flutter/material.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';

class Spleshscreen extends StatelessWidget {
  const Spleshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(bottom: Dimensions.fullHeight / 4),
          height: Dimensions.fullHeight,
          width: Dimensions.fullWidth,
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
                      height: Dimensions.fullHeight / 3,
                    )),
              ),
              SizedBox(height: Dimensions.height1),
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
