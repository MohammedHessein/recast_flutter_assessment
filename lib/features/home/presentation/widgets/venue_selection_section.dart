import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';
import 'package:recast_flutter_assessment/features/home/presentation/cubit/home_cubit.dart';
import 'package:recast_flutter_assessment/features/home/presentation/widgets/venue_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class VenueSelectionSection extends StatelessWidget {
  const VenueSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: UiSizes.containerMarginHorizontal.w,
          ),
          child: Text(
            AppStrings.venueSelection,
            style: AppTextStyles.style13Bold.copyWith(
              color: AppColors.white.withValues(alpha: 0.85),
            ),
          ),
        ),
        SizedBox(height: UiSizes.spaceHeightL.h),
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final isLoading = state is HomeLoading;
            final venueData = state is HomeLoaded ? state.venueData : [];

            return Skeletonizer(
              enabled: isLoading,
              child: MasonryGridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: UiSizes.spaceHeightM.h,
                crossAxisSpacing: UiSizes.spaceHeightM.w,
                itemCount: isLoading ? 4 : venueData.length,
                padding: EdgeInsets.symmetric(
                  horizontal: UiSizes.containerMarginHorizontal.w,
                ),
                itemBuilder: (context, index) {
                  const heights = [94.0, 127.0, 141.0, 118.0];
                  final height = heights[index % heights.length];

                  if (isLoading) {
                    return VenueCard(
                      model: venueData.isNotEmpty
                          ? venueData[0]
                          : (context
                                .read<HomeCubit>()
                                .repository
                                .getVenueSelectionData()[0]),
                      height: height,
                    );
                  }
                  return VenueCard(
                    model: venueData[index],
                    height: height,
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
