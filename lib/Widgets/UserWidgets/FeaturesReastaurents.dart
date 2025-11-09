import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Model/UserModel/Restaurent.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';
import 'package:restro_table_booking_app/Users/UserPages/SeeRestaurentDetail.dart';

class FeaturesReastaurents extends StatelessWidget {
  final Restaurant restaurant;
  const FeaturesReastaurents({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SeeRestaurentDetail(
                  name: restaurant.name,
                  imageUrl: restaurant.imageUrl,
                  cuisine: restaurant.cuisine,
                  distance: restaurant.distance,
                  rating: restaurant.rating))),
      child: Container(
        width: 325.w,
        margin: EdgeInsets.only(right: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackColor12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            // 🔹 Restaurant image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                restaurant.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),

            // 🔹 Rating Badge
            Positioned(
              top: 10.h,
              right: 10.w,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.actionPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: Colors.white, size: 14),
                    const SizedBox(width: 4),
                    Text(restaurant.rating.toString(),
                        style: AppTextstyle.restaurentFeature(0, true)),
                  ],
                ),
              ),
            ),

            // 🔹 Bottom info and button
            Positioned(
              left: 12.w,
              right: 12.w,
              bottom: 12.h,
              child: Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: AppColors.whiteColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurant.name,
                            style: AppTextstyle.restaurentFeature(1, true),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "${restaurant.cuisine} • ${restaurant.distance} km",
                            style: AppTextstyle.restaurentFeature(2, false),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.actionPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 8.h,
                        ),
                      ),
                      child: Text(
                        "Book",
                        style: AppTextstyle.restaurentFeature(3, false),
                      ),  
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}