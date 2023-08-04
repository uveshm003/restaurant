import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/ui/home/mobile/helper/home_search_bar.dart';
import 'package:restaurant/ui/utils/const/app_strings.dart';
import 'package:restaurant/ui/utils/theme/app_colors.dart';
import 'package:restaurant/ui/utils/theme/text_style.dart';
import 'package:restaurant/ui/utils/widgets/common_home_appbar.dart';
import 'package:restaurant/ui/utils/widgets/restaurant_card.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonHomeAppbar(
        isLeadingEnable: false,
        backgroundColor: AppColors.primaryBrown,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 22.h),
              child: Icon(
                Icons.location_on,
                color: AppColors.white.withOpacity(0.6),
                size: 16.0.w,
              ),
            ),
            //TODO implement onTap method
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.keyThomson,
                    style: TextStyles.regular.copyWith(
                      fontSize: 18.sp,
                      color: AppColors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.0.h),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0.w,
                      color: AppColors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            const HomeSearchBar(),
            //TODO implement onTap Method
            InkWell(
              child: Text(
                AppString.keyFilter,
                style: TextStyles.regular.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            const RestaurantCard(
                image: 'assets/images/food.png',
                rating: '2.3',
                restaurantName: 'Saffron',
                distance: '3.5KM',
                commentCount: '25',),
          ],
        ),
      ),
      backgroundColor: AppColors.primaryBrown,
    );
  }
}
