import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';
import 'package:restro_table_booking_app/Widgets/UserWidgets/ViewBooking.dart';

class UserSeeBooking extends StatefulWidget {
  const UserSeeBooking({super.key});

  @override
  State<UserSeeBooking> createState() => _UserSeeBookingState();
}

class _UserSeeBookingState extends State<UserSeeBooking>
    with SingleTickerProviderStateMixin {
  late TabController _tabBarController;
  final List<String> bookingTab = ["Upcoming", "Completed"];

  @override
  void initState() {
    super.initState();
    _tabBarController = TabController(length: bookingTab.length, vsync: this);
    _tabBarController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.textPrimaryColor,
        title: Text('My Booking', style: AppTextstyle.myProfile()),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),

            // TabBar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 40.h,
                width: ScreenUtil().screenWidth,
                child: TabBar(
                  controller: _tabBarController,
                  isScrollable: false,
                  indicator: const BoxDecoration(),
                  dividerColor: AppColors.transparentColor,
                  labelPadding: EdgeInsets.zero,
                  overlayColor:
                      WidgetStateProperty.all(AppColors.transparentColor),
                  tabs: List.generate(bookingTab.length, (index) {
                    final bool isSelected = _tabBarController.index == index;
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.grayMedium, width: 1),
                        color: isSelected
                            ? AppColors.actionPrimaryColor
                            : AppColors.textPrimaryColor,
                      ),
                      child: Center(
                        child: Text(
                          bookingTab[index],
                          style: AppTextstyle.seeTabBarTextStyle(),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),

            SizedBox(height: 10.h),

            // TabBarView (must use Expanded)
            Expanded(
              child: TabBarView(
                controller: _tabBarController,
                children: [
                  ViewBooking(bookingType: 'Upcoming'),
                  ViewBooking(bookingType: 'Completed'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
