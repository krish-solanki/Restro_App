import 'package:flutter/material.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';
import 'package:restro_table_booking_app/Users/UserLogin/Login.dart';
import 'package:restro_table_booking_app/Users/UserLogin/Register.dart';
import 'package:restro_table_booking_app/Users/UserPages/UserHome.dart';
import 'package:restro_table_booking_app/Users/UserPages/UserProfile.dart';
import 'package:restro_table_booking_app/Users/UserPages/UserSeeBooking.dart';

class UserBottomNav extends StatefulWidget {
  const UserBottomNav({super.key});

  @override
  State<UserBottomNav> createState() => _UserBottomNavState();
}

class _UserBottomNavState extends State<UserBottomNav> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    UserHome(),
    UserSeeBooking(),
    UserProfile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[selectedIndex],
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          backgroundColor: AppColors.whiteColor,
          elevation: 8,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.actionPrimaryColor,
          unselectedItemColor: AppColors.greyColor700,
          selectedLabelStyle: AppTextstyle.menuFontStyle(true),
          unselectedLabelStyle: AppTextstyle.menuFontStyle(false),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded),
              label: 'View Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
