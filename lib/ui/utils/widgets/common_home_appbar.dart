import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/ui/utils/theme/app_colors.dart';
import 'package:restaurant/ui/utils/widgets/common_home_tabbar.dart';

class CommonHomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CommonHomeAppbar({
    super.key,
    required this.isLeadingEnable,
    this.onLeadingPressed,
    this.backgroundColor,
  });

  final bool isLeadingEnable;
  final Function? onLeadingPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0.w, 0.0, 30.0.w, 0.0),
      child: AppBar(
        backgroundColor: backgroundColor ?? AppColors.primaryBrown,
        automaticallyImplyLeading: false,
        elevation: 0,
        bottom: const CommonHomeTabBar(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(88.h);
}
