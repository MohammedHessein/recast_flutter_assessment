import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: UiSizes.detailsButtonPaddingH.w,
          vertical: UiSizes.detailsButtonPaddingV.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(UiSizes.detailsButtonRadius.r),
          border: Border.all(
            color: AppColors.white.withValues(alpha: 0.5),
            width: UiSizes.detailsButtonBorderWidth,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: AppTextStyles.style9Bold.copyWith(
                color: AppColors.white,
              ),
            ),
            if (icon != null) ...[
              SizedBox(width: UiSizes.spaceHeightS.w),
              Icon(
                icon,
                color: AppColors.white,
                size: UiSizes.detailsIconSize.sp,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
