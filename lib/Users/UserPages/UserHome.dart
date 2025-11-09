import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Model/UserModel/Restaurent.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';
import 'package:restro_table_booking_app/Widgets/UserWidgets/AllRestaurent.dart';
import 'package:restro_table_booking_app/Widgets/UserWidgets/FeaturesReastaurents.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> category = [
    'All',
    'Veg',
    'Italian',
    'Chinese',
    'Nearby',
    'Top Rated',
  ];

  // ✅ Static sample restaurant list
  final List<Restaurant> featureRestaurants = [
    Restaurant(
      name: "Leonardo's Pizza",
      imageUrl: 'images/Interior/interior1.jpg',
      cuisine: 'Italian',
      distance: 1.2,
      rating: 4.5,
    ),
    Restaurant(
      name: 'La Pinoz',
      imageUrl: 'images/Interior/interior2.jpg',
      cuisine: 'Indian',
      distance: 2.3,
      rating: 4.5,
    ),
    Restaurant(
      name: 'Burger King',
      imageUrl: 'images/Interior/interior3.jpg',
      cuisine: 'American',
      distance: 5,
      rating: 3.3,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: category.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 Location Bar (Your Code)
                Container(
                  height: 45.h,
                  width: Dimensions.fullWidth,
                  decoration: BoxDecoration(
                    color: AppColors.textPrimaryColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Rajkot, ',
                              style: AppTextstyle.locationTextStyle()),
                          Text('Gujarat',
                              style: AppTextstyle.locationTextStyle()),
                        ],
                      ),
                      Icon(
                        Icons.account_circle_outlined,
                        color: AppColors.whiteColor,
                        size: 28.sp,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                // 🔹 Category Tabs (Your original rounded style)
                Container(
                  height: 35.h,
                  width: Dimensions.fullWidth,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.registerBorderColor,
                      width: 2,
                    ),
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: "Search for restaurants, cuisine...",
                              hintStyle: AppTextstyle.hintText(),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Icon(
                          Icons.search,
                          color: AppColors.actionPrimaryColor,
                          size: 22.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 20.h,
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    indicator: BoxDecoration(),
                    dividerColor: AppColors.transparentColor,
                    labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
                    overlayColor:
                        WidgetStateProperty.all(AppColors.transparentColor),
                    tabs: List.generate(category.length, (index) {
                      final bool isSelected = _tabController.index == index;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _tabController.index = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.actionPrimaryColor
                                : Colors.transparent,
                            border: Border.all(
                              color: AppColors.actionPrimaryColor,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Center(
                            child: Text(
                              category[index],
                              style: isSelected
                                  ? AppTextstyle.tabBarTextStyle(true)
                                  : AppTextstyle.tabBarTextStyle(false),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 16.h),

                // 🔹 Featured Restaurants Section
                Text('Featured Restaurants',
                    style: AppTextstyle.featureRestaurentTextStyle()),
                SizedBox(height: 10.h),

                // ✅ Horizontal scroll section
                SizedBox(
                  height: 220.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: featureRestaurants.length,
                    itemBuilder: (context, index) {
                      final restaurant = featureRestaurants[index];
                      return FeaturesReastaurents(restaurant: restaurant);
                    },
                  ),
                ),

                SizedBox(height: 16.h),

                // 🔹 All Restaurants (Grid)
                Text('All Restaurants',
                    style: AppTextstyle.featureRestaurentTextStyle()),

                SizedBox(height: 10.h),

                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: featureRestaurants.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.w,
                    mainAxisSpacing: 12.h,
                    childAspectRatio: 0.8, // You can adjust this ratio
                  ),
                  itemBuilder: (context, index) {
                    final restaurant = featureRestaurants[index];
                    return AllRestaurent(restaurant: restaurant);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
