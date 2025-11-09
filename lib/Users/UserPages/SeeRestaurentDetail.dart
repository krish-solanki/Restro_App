import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restro_table_booking_app/Style/Color.dart';
import 'package:restro_table_booking_app/Style/Dimensions.dart';
import 'package:restro_table_booking_app/Style/TextStyle.dart';
import 'package:restro_table_booking_app/Widgets/UserWidgets/SeeAllSeat.dart';
import 'package:restro_table_booking_app/Widgets/UserWidgets/SeeMenu.dart';
import 'package:restro_table_booking_app/Widgets/UserWidgets/SeeReview.dart';

class SeeRestaurentDetail extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String cuisine;
  final double distance;
  final double rating;

  const SeeRestaurentDetail({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.cuisine,
    required this.distance,
    required this.rating,
  });

  @override
  State<SeeRestaurentDetail> createState() => _SeeRestaurentDetailState();
}

class _SeeRestaurentDetailState extends State<SeeRestaurentDetail>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> category = ['Book', 'Menu', 'Review'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: category.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(color: AppColors.whiteColor),
            expandedHeight: 300.h,
            pinned: true,
            backgroundColor: const Color(0xFF333333),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.name, style: AppTextstyle.seeRestoName()),
              centerTitle: false,
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(widget.imageUrl, fit: BoxFit.cover),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [Colors.black87, Colors.transparent],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 🔹 Main Content
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.textPrimaryColor,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.cuisine} • ${widget.distance}',
                        style: AppTextstyle.seeRestoSubTitle(false),
                      ),
                      const Icon(Icons.favorite_border, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 12.h),

                  // 🔹 TabBar
                  SizedBox(
                    height: 40.h,
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: false,
                      indicator: const BoxDecoration(),
                      dividerColor: AppColors.transparentColor,
                      labelPadding: EdgeInsets.zero,
                      overlayColor:
                          WidgetStateProperty.all(AppColors.transparentColor),
                      tabs: List.generate(category.length, (index) {
                        final bool isSelected = _tabController.index == index;
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.grayMedium, width: 1),
                            color: isSelected
                                ? AppColors.actionPrimaryColor
                                : AppColors.textPrimaryColor,
                          ),
                          child: Center(
                            child: Text(
                              category[index],
                              style: AppTextstyle.seeTabBarTextStyle(),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),

                  // 🔹 Tab Content (give it fixed height inside scroll)
                  SizedBox(
                    height: 500.h, // set height manually or dynamically
                    child: TabBarView(
                      controller: _tabController,
                      children:const [
                        // Book Tab
                        SeeAllSeat(),

                        // Menu Tab
                        SeeMenu(),

                        // Review Tab
                        SeeReview(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
