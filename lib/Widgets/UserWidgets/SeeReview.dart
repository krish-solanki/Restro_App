import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';

class SeeReview extends StatefulWidget {
  const SeeReview({super.key});

  @override
  State<SeeReview> createState() => _SeeReviewState();
}

class _SeeReviewState extends State<SeeReview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 10.sp),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.reviewBackgroundColor,
            borderRadius: BorderRadius.circular(8.sp),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25.sp),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.sp),
                      child: Image.asset(
                        'images/customer_image.jpg',
                        height: 60,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.sp, top: 15.sp),
                        child: Text(
                          'Name',
                          style: AppTextstyle.reviewerName(),
                        ),
                      ),
                      SizedBox(height: 1.sp),
                      Padding(
                        padding: EdgeInsets.only(left: 25.sp),
                        child: RatingBarIndicator(
                          rating: 4.5,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: AppColors.actionPrimaryColor,
                          ),
                          itemCount: 5,
                          itemSize: 20,
                        ),
                      ),
                      SizedBox(height: 1.sp),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 25.sp, bottom: 5.sp, right: 15.sp),
                        child: Text(
                          'This is review section. User can write their review about the restaurant and their experience. This will help other users to know about the restaurant.',
                          style: AppTextstyle.reviewerDate(),
                        ),
                      ),
                      SizedBox(height: 1.sp),
                    ],
                  ))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
