import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';
import 'package:recast_flutter_assessment/features/profile/data/models/loyalty_history_model.dart';

import 'loyalty_history_item_widget.dart';

class LoyaltyHistorySection extends StatelessWidget {
  final List<LoyaltyHistoryModel>? historyData;

  const LoyaltyHistorySection({super.key, this.historyData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.loyaltyHistory,
          style: AppTextStyles.style12Bold.copyWith(
            color: AppColors.textPrimary.withValues(alpha: 0.65),
          ),
        ),
        SizedBox(height: UiSizes.spaceHeightL.h),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: historyData?.length ?? 5,
          itemBuilder: (context, index) {
            return LoyaltyHistoryItemWidget(
              model: historyData?[index],
            );
          },
          separatorBuilder: (context, index) =>
              SizedBox(height: UiSizes.spaceHeightSS.h),
        ),
      ],
    );
  }
}
