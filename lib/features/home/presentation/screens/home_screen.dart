import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_flutter_assessment/core/di/injection.dart';
import 'package:recast_flutter_assessment/core/shared/widgets/custom_app_bar.dart';
import 'package:recast_flutter_assessment/core/utils/app_colors.dart';
import 'package:recast_flutter_assessment/core/utils/ui_sizes.dart';
import 'package:recast_flutter_assessment/features/home/presentation/widgets/venue_selection_section.dart';

import '../cubit/home_cubit.dart';
import '../widgets/loyalty_points_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..loadHomeData(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: UiSizes.paddingLeftAndRight.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                SizedBox(height: UiSizes.spaceHeightM.h),
                const LoyaltyPointsSection(),
                SizedBox(height: UiSizes.spaceHeightL.h),
                const VenueSelectionSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
