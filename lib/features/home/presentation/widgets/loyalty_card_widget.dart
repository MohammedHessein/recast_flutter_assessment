import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/core/shared/buttons/custom_button.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_regex.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';
import 'package:recast_flutter_assessment/features/home/data/models/loyalty_points_model.dart';

class LoyaltyCardWidget extends StatelessWidget {
  final LoyaltyPointsModel model;

  const LoyaltyCardWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: UiSizes.containerMarginHorizontal.w,
        vertical: UiSizes.containerMarginVertical.h,
      ),
      width: double.infinity,
      height: UiSizes.containerHeight.h,
      padding: EdgeInsets.symmetric(
        horizontal: UiSizes.containerPaddingHorizontal.w,
        vertical: UiSizes.containerPaddingVertical.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(UiSizes.containerRadius.r),
        border: Border.all(
          color: AppColors.white.withValues(alpha: 0.1),
          width: UiSizes.cardBorderWidth,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: AppTextStyles.style9Bold,
                  ),
                  Text(
                    model.subtitle,
                    style: AppTextStyles.style13Bold.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                radius: UiSizes.smallAvatarRadius.r,
                backgroundColor: AppColors.white.withValues(alpha: 0.1),
                child: Icon(
                  FontAwesomeIcons.circleUser.data,
                  color: AppColors.white.withValues(alpha: 0.6),
                  size: UiSizes.smallIconSize.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: UiSizes.spaceHeightL.h),
          Text(
            model.points.toString().replaceAllMapped(
              AppRegex.pointsFormatter,
              (Match m) => '${m[1]},',
            ),
            style: AppTextStyles.style22Bold.copyWith(
              color: AppColors.secondaryColor,
              letterSpacing: UiSizes.pointsLetterSpacing,
            ),
          ),
          SizedBox(height: UiSizes.spaceHeightM.h),
          Stack(
            children: [
              Container(
                height: UiSizes.progressBarHeight.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(
                    UiSizes.progressBarRadius.r,
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: model.progressPercent,
                child: Container(
                  height: UiSizes.progressBarHeight.h,
                  decoration: BoxDecoration(
                    gradient: AppColors.secondaryGradient,
                    borderRadius: BorderRadius.circular(
                      UiSizes.progressBarRadius.r,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${AppStrings.totalOrders} ',
                          style: AppTextStyles.style10Bold.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                        TextSpan(
                          text: model.totalOrders.toString(),
                          style: AppTextStyles.style10Bold.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: UiSizes.spaceHeightS.h),
                  Row(
                    children: model.recentOrderImagePaths
                        .map(
                          (path) => Padding(
                            padding: EdgeInsets.only(
                              right: UiSizes.recentOrderImagePadding.w,
                            ),
                            child: Container(
                              width: UiSizes.recentOrderImageSize.w,
                              height: UiSizes.recentOrderImageSize.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(path),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(
                                  UiSizes.recentOrderImageRadius.r,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: CustomButton(
                  text: AppStrings.moreDetails,
                  icon: Icons.arrow_forward,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
