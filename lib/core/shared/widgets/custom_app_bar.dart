import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recast_flutter_assessment/core/constants/app_images.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/core/router/app_routes.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';

class CustomAppBar extends StatelessWidget {
  final bool isProfile;

  const CustomAppBar({super.key, this.isProfile = false});

  @override
  Widget build(BuildContext context) {
    if (isProfile) {
      return Padding(
        padding: const EdgeInsets.only(top: UiSizes.paddingTop),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.yourProfile,
              style: AppTextStyles.style16Bold.copyWith(
                color: AppColors.white.withValues(alpha: 0.8),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(AppImages.settings),
            ),
          ],
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.welcomeBack,
              style: AppTextStyles.style10Bold.copyWith(
                color: AppColors.textSecondary.withValues(alpha: 0.7),
              ),
            ),
            Text(
              AppStrings.userName,
              style: AppTextStyles.style16Bold.copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.profileScreen);
          },
          child: Container(
            width: UiSizes.avatarContainerSize.w,
            height: UiSizes.avatarContainerSize.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.white.withValues(
                  alpha: 0.2,
                ), // Light grey outline
                width: UiSizes.avatarBorderWidth,
              ),
              color: AppColors.avatarColor,
            ),
            alignment: Alignment.center,
            child: Icon(
              FontAwesomeIcons.circleUser.data,
              color: AppColors.white.withValues(alpha: 0.6),
              size: UiSizes.iconSize.sp,
            ),
          ),
        ),
      ],
    );
  }
}
