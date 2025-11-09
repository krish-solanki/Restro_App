import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';

class SeeAllSeat extends StatefulWidget {
  const SeeAllSeat({super.key});

  @override
  State<SeeAllSeat> createState() => _SeeAllSeatState();
}

class _SeeAllSeatState extends State<SeeAllSeat> {
  final List<int> dates = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17
  ];
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Party Size', style: AppTextstyle.seeRestoSubTitle(true)),
          SizedBox(height: 4.h),
          SizedBox(
            height: 30.h,
            child: ListView.separated(
              separatorBuilder: (_, __) => SizedBox(width: 8.w),
              itemCount: dates.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final bool isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 35.w,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.actionPrimaryColor
                          : AppColors.textPrimaryColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: AppColors.grayMedium,
                        width: 1,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      dates[index].toString(),
                      style: AppTextstyle.seeTabBarTextStyle().copyWith(
                          color:
                              isSelected ? Colors.white : AppColors.grayMedium),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 12.h),
          Text('Select Time Slot:', style: AppTextstyle.seeRestoSubTitle(true)),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 16,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 12, // vertical spacing
              crossAxisSpacing: 12, // horizontal spacing
              childAspectRatio: 1.4,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    '6:30',
                    style: AppTextstyle.hintText(),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: Dimensions.fullWidth - 20,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.actionPrimaryColor,
              ),
              child: Center(
                child: Text(
                  'Book Now',
                  style: AppTextstyle.loginButtonStyle(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
