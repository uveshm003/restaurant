import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/ui/utils/const/app_strings.dart';
import 'package:restaurant/ui/utils/theme/app_colors.dart';
import 'package:restaurant/ui/utils/theme/text_style.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard(
      {super.key,
      required this.image,
      required this.rating,
      required this.restaurantName,
      required this.distance,
      required this.commentCount});

  final String image;
  final String rating;
  final String restaurantName;
  final String distance;
  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 310.h,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            width: 294.w,
            height: 160.h,
            top: 230.h,
            left: 50.w,
            child: Card(
              color: AppColors.restaurantCard,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14.0.w,
                        ),
                        Text(
                          rating,
                          style: TextStyles.regular.copyWith(
                            color: AppColors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    restaurantName,
                    style: TextStyles.semiBold.copyWith(
                      fontSize: 22.sp,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.black,
                            size: 10.w,
                          ),
                          Text(
                            distance,
                            style: TextStyles.regular.copyWith(
                              color: AppColors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        AppString.keyThreeDollars,
                        style: TextStyles.medium.copyWith(
                          color: AppColors.black.withOpacity(0.7),
                          fontSize: 18.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            commentCount,
                            style: TextStyles.medium.copyWith(
                              color: AppColors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
