import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/framework/controllers/home_controller.dart';
import 'package:restaurant/ui/utils/const/app_strings.dart';
import 'package:restaurant/ui/utils/theme/app_colors.dart';
import 'package:restaurant/ui/utils/theme/text_style.dart';

class CommonHomeTabBar extends ConsumerWidget implements PreferredSizeWidget {
  const CommonHomeTabBar({
    super.key,
  });

  @override
  Size get preferredSize {
    return Size.fromHeight(33.h);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeWatch = ref.watch(homeController);
    return Row(
      children: [
        InkWell(
          onTap: () {
            homeWatch.jumpToPage(0);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.only(bottom: 7.h),
                child: Text(
                  AppString.keyFavourites,
                  style: TextStyles.regular.copyWith(
                    color: homeWatch.selectedPage == 0
                        ? AppColors.white
                        : AppColors.white.withOpacity(0.6),
                    fontSize: 16.sp,
                    fontWeight: TextStyles.fwSemiBold,
                  ),
                ),
              ),
              homeWatch.selectedPage == 0
                  ? Container(
                      width: 20.w,
                      height: 5.h,
                      padding: EdgeInsets.zero,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        InkWell(
          onTap: () {
            homeWatch.jumpToPage(1);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.only(bottom: 7.h),
                child: Text(
                  AppString.keyReservations,
                  style: TextStyles.regular.copyWith(
                    color: homeWatch.selectedPage == 1
                        ? AppColors.white
                        : AppColors.white.withOpacity(0.6),
                    fontSize: 16.sp,
                    fontWeight: TextStyles.fwSemiBold,
                  ),
                ),
              ),
              homeWatch.selectedPage == 1
                  ? Container(
                      width: 20.w,
                      height: 5.h,
                      padding: EdgeInsets.zero,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        InkWell(
          onTap: () {
            homeWatch.jumpToPage(2);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.only(bottom: 7.h),
                child: Text(
                  AppString.keyNearBy,
                  style: TextStyles.regular.copyWith(
                    color: homeWatch.selectedPage == 2
                        ? AppColors.white
                        : AppColors.white.withOpacity(0.6),
                    fontSize: 16.sp,
                    fontWeight: TextStyles.fwSemiBold,
                  ),
                ),
              ),
              homeWatch.selectedPage == 2
                  ? Container(
                      width: 20.w,
                      height: 5.h,
                      padding: EdgeInsets.zero,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
