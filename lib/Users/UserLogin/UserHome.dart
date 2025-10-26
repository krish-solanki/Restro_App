import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 56.sp,
            width: Dimensions.fullWidth - 32,
            decoration: BoxDecoration(
              color: AppColors.textPrimaryColor,
            ),
            child: Row(
              children: [
                Text('Rajkot' + ','),
                Text('Gujarat'),
              ],
            ),
          ),

          Container(
            height: 56.sp,
            width: Dimensions.fullWidth - 32,
            decoration: BoxDecoration(),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search for restaurents"
              ),
            ),
          ),
        ],
      ),
    );
  }
}