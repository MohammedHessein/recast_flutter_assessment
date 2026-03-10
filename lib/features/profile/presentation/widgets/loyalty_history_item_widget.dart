import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/constants/app_images.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';
import 'package:recast_flutter_assessment/features/profile/data/models/loyalty_history_model.dart';

class LoyaltyHistoryItemWidget extends StatelessWidget {
  final LoyaltyHistoryModel? model;

  const LoyaltyHistoryItemWidget({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: UiSizes.containerMarginVertical.h),
      padding: EdgeInsets.all(UiSizes.containerPaddingVertical.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(UiSizes.secondContainerRadius.r),
      ),
      child: Row(
        children: [
          Container(
            width: UiSizes.historyImageSize.w,
            height: UiSizes.historyImageSize.h,
            padding: EdgeInsets.all(UiSizes.recentOrderImagePadding.w),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(
                UiSizes.recentOrderImageRadius.r,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                UiSizes.recentOrderImageRadius.r / 2,
              ),
              child: Image.asset(
                AppImages.item,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: UiSizes.spaceWidthM.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model?.title ?? AppStrings.nobikoBistro,
                            style: AppTextStyles.style10Bold.copyWith(
                              color: AppColors.textPrimary.withValues(
                                alpha: 0.9,
                              ),
                            ),
                          ),
                          Text(
                            model?.date ?? '06 Jan, 2025',
                            style: AppTextStyles.style10Bold.copyWith(
                              color: AppColors.textSecondary.withValues(
                                alpha: 0.5,
                              ),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: UiSizes.detailsButtonPaddingH.w,
                        vertical: UiSizes.detailsButtonPaddingV.h,
                      ),
                      decoration: BoxDecoration(
                        gradient: AppColors.secondaryGradient,
                        borderRadius: BorderRadius.circular(
                          UiSizes.detailsButtonRadius.r,
                        ),
                      ),
                      child: Text(
                        model?.points ?? '325 ${AppStrings.credits}',
                        style: AppTextStyles.style10Bold.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: UiSizes.spaceHeightL.h),
                Row(
                  children: [
                    Text(
                      '125.32 JD \u2022 230 ${AppStrings.credits}',
                      style: AppTextStyles.style10Bold.copyWith(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.grey.withValues(alpha: 0.5),
                      size: UiSizes.detailsIconSize.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
