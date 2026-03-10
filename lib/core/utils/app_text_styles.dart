import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/constants/app_constants.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle style10Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary.withValues(alpha: 0.6),
  );
  static TextStyle style16Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColor,
  );
  static TextStyle style9Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 9.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary.withValues(alpha: 0.5),
  );
  static TextStyle style13Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static TextStyle style22Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColorLight,
  );
  static TextStyle style7Medium = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 7.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  static TextStyle style6Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 6.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary.withValues(alpha: 0.8),
  );
  static TextStyle style12Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColor,
  );
  static TextStyle style11Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 11.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle style24Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static TextStyle style8Bold = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 8.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
}
