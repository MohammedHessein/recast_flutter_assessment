import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';
import 'package:recast_flutter_assessment/features/home/data/models/venue_selection_model.dart';

class VenueCard extends StatelessWidget {
  final VenueSelectionModel model;
  final double height;

  const VenueCard({
    super.key,
    required this.model,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: model.onTap,
      child: Container(
        height: height.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(UiSizes.venueCardRadius.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(UiSizes.venueCardRadius.r),
          child: Stack(
            children: [
              Positioned.fill(
                child: model.image.endsWith('.svg')
                    ? SvgPicture.asset(
                        model.image,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        model.image,
                        fit: BoxFit.cover,
                      ),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withValues(alpha: 0.3),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(UiSizes.containerPaddingVertical.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      model.title,
                      style: AppTextStyles.style6Bold.copyWith(
                        color: AppColors.white.withValues(alpha: 0.7),
                      ),
                    ),
                    Text(
                      model.subtitle,
                      style: AppTextStyles.style12Bold.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              PositionedDirectional(
                end: UiSizes.containerPaddingVertical.w,
                bottom: UiSizes.containerPaddingVertical.h,
                child: Container(
                  width: UiSizes.venueIconCircleSize.w,
                  height: UiSizes.venueIconCircleSize.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.white.withValues(alpha: 0.4),
                      width: UiSizes.cardBorderWidth.w,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.secondaryColor,
                    size: UiSizes.venueArrowIconSize.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
