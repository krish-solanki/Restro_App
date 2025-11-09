import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                color: AppColors.textPrimaryColor,
                width: Dimensions.fullWidth,
                padding: EdgeInsets.symmetric(vertical: 15.sp),
                child: Center(
                  child: Text(
                    'My Profile',
                    style: AppTextstyle.myProfile(),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),

                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.actionPrimaryColor,
                            width: 4.w,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.r),
                          child: Image.asset(
                            'images/customer_image.jpg',
                            width: 120.w,
                            height: 120.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(height: 10.h),
                      Text('Name', style: AppTextstyle.myProfileName()),
                      SizedBox(height: 25.h),

                      // Account Details Card
                      _buildCard(
                        title: 'Account Details',
                        children: [
                          _buildRow(
                            icon: Icons.email_rounded,
                            label: 'Email',
                            valueWidget: Text(
                              'ksolanki700@rku.ac.in',
                              style: AppTextstyle.myProfileUserDetails(),
                            ),
                          ),
                          _buildRow(
                            icon: Icons.phone_rounded,
                            label: 'Phone Number',
                            valueWidget: Text(
                              '+91 9876543210',
                              style: AppTextstyle.myProfileUserDetails(),
                            ),
                          ),
                          _buildRow(
                            icon: Icons.lock_rounded,
                            label: 'Password',
                            valueWidget: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6.w, vertical: 3.h),
                                  decoration: BoxDecoration(
                                    color: AppColors.backgroundColor,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Text(
                                    'Change Password',
                                    style: TextStyle(
                                      color: AppColors.actionPrimaryColor,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30.h),

                      // Preferences Card
                      _buildCard(
                        title: 'Preferences',
                        children: [
                          _buildRow(
                            icon: Icons.notifications_rounded,
                            label: 'Notifications',
                            valueWidget: Switch(
                              value: true,
                              onChanged: (bool value) {},
                              activeColor: AppColors.actionPrimaryColor,
                            ),
                          ),
                          _buildRow(
                            icon: Icons.payment_rounded,
                            label: 'Payment Methods',
                            valueWidget: SizedBox(),
                          ),
                        ],
                      ),

                      SizedBox(height: 25.h),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.actionPrimaryColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 60.w, vertical: 10.h),
                          child: Text(
                            'Logout',
                            style: AppTextstyle.myProfileLogoutBtn(),
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // reusable card widget
  Widget _buildCard({required String title, required List<Widget> children}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.grayMedium,
              blurRadius: 5.r,
              offset: Offset(0, 3.h),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w, top: 12.h),
              child: Text(title, style: AppTextstyle.myProfileSection()),
            ),
            SizedBox(height: 10.h),
            ...children,
          ],
        ),
      ),
    );
  }

  // reusable row with icon, label, bottom border
  Widget _buildRow({
    required IconData icon,
    required String label,
    required Widget valueWidget,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      margin: EdgeInsets.only(bottom: 5.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.backgroundColor,
            width: 1.2.w,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 20.w),
          Icon(icon, color: AppColors.actionPrimaryColor, size: 28.sp),
          SizedBox(width: 15.w),
          Expanded(
            child: Text(
              label,
              style: AppTextstyle.myProfileLable(),
            ),
          ),
          valueWidget,
          SizedBox(width: 15.w),
        ],
      ),
    );
  }
}
