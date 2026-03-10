import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';

Future<void> showExitConfirmationDialog(BuildContext context) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColors.cardBackground,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UiSizes.containerRadius.r),
        side: const BorderSide(
          color: AppColors.border,
          width: UiSizes.cardBorderWidth,
        ),
      ),
      title: Text(
        AppStrings.exit,
        style: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'Satoshi',
        ),
      ),
      content: Text(
        AppStrings.exitConfirmation,
        style: TextStyle(
          color: AppColors.textSecondary,
          fontSize: 16.sp,
          fontFamily: 'Satoshi',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(
            AppStrings.no,
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14.sp,
              fontFamily: 'Satoshi',
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: AppColors.buttonPrimaryGradient,
            borderRadius: BorderRadius.circular(UiSizes.detailsButtonRadius.r),
          ),
          child: TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: UiSizes.detailsButtonPaddingH.w,
                vertical: UiSizes.detailsButtonPaddingV.h,
              ),
            ),
            child: Text(
              AppStrings.yes,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Satoshi',
              ),
            ),
          ),
        ),
      ],
    ),
  );

  if (result == true) {
    SystemNavigator.pop();
  }
}
