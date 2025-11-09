import 'package:flutter/material.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';

class ViewBooking extends StatefulWidget {
  final String bookingType;
  ViewBooking({super.key, required this.bookingType});

  @override
  State<ViewBooking> createState() => _ViewBookingState();
}

class _ViewBookingState extends State<ViewBooking> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: AppColors.actionPrimaryColor, // border color
                            width: 3,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'images/customer_image.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Leonardo DiCaprio',
                          style: AppTextstyle.bookinName(),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Oct 22, 2025 at 7:00 PM',
                          style: AppTextstyle.bookingDetail(),
                        ),
                        Text(
                          'Party Size: 4',
                          style: AppTextstyle.bookingDetail(),
                        ),
                      ],
                    ),
                    widget.bookingType == 'Upcoming'
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppColors.actionPrimaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Cancle',
                              style: AppTextstyle.bookingDetail().copyWith(
                                color: AppColors.whiteColor,
                              ),
                            ),
                          )
                        : const Text(''),
                  ],
                )
              ],
            ),
          );
        });
  }
}
