import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/di/injection.dart';
import 'package:recast_flutter_assessment/core/shared/widgets/custom_app_bar.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/app_text_styles.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';
import 'package:recast_flutter_assessment/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../widgets/loyalty_history_section.dart';
import '../widgets/profile_header_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>()..loadProfileData(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: UiSizes.paddingLeftAndRight.w,
            ),
            child: BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                if (state is ProfileLoading || state is ProfileLoaded) {
                  final profileData = state is ProfileLoaded
                      ? state.profileData
                      : (state as ProfileLoading).profileData;
                  final historyData = state is ProfileLoaded
                      ? state.historyData
                      : (state as ProfileLoading).historyData;

                  return Skeletonizer(
                    enabled: state is ProfileLoading,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomAppBar(isProfile: true),
                        SizedBox(height: UiSizes.spaceHeightL.h),
                        ProfileHeaderWidget(profileData: profileData),
                        SizedBox(height: UiSizes.spaceHeightXL.h),
                        LoyaltyHistorySection(historyData: historyData),
                      ],
                    ),
                  );
                } else if (state is ProfileError) {
                  return SizedBox(
                    height: 1.sh - 0.2.sh,
                    child: Center(
                      child: Text(
                        state.message,
                        style: AppTextStyles.style13Bold.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ),
      ),
    );
  }
}
