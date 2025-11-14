import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';

class SeeMenu extends StatefulWidget {
  const SeeMenu({super.key});

  @override
  State<SeeMenu> createState() => _SeeMenuState();
}

class _SeeMenuState extends State<SeeMenu> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 10.sp),
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
                    padding: EdgeInsets.only(left: 15.sp),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.sp),
                      child: Image.asset(
                        'images/pizza.jpg',
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Menu Name',
                          style: AppTextstyle.menuTitle(),
                        ),
                        SizedBox(height: 5.sp),
                        Text(
                          'Description of the.',
                          style: AppTextstyle.menuDescription(),
                        ),
                        SizedBox(height: 5.sp),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5.sp),
                              decoration: BoxDecoration(
                                color: AppColors.actionPrimaryColor,
                                borderRadius: BorderRadius.circular(5.sp),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.sp, vertical: 2.sp),
                                child: Center(
                                  child: Text(
                                    'Best Seller',
                                    style: AppTextstyle.hintText().copyWith(
                                        color: AppColors.whiteColor,
                                        fontSize: 10.sp),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.errorCancelColor,
                                borderRadius: BorderRadius.circular(5.sp),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.sp, vertical: 2.sp),
                                child: Center(
                                  child: Text(
                                    'Veg',
                                    style: AppTextstyle.hintText().copyWith(
                                        color: AppColors.whiteColor,
                                        fontSize: 10.sp),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 15.sp),
                      child: Text(
                        '120',
                        style: AppTextstyle.menuPrice(),
                      ))
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
