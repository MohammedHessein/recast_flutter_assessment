import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:recast_flutter_assessment/features/home/data/repositories/mock_loyalty_points_repository.dart';
import 'package:recast_flutter_assessment/features/home/presentation/cubit/home_cubit.dart';
import 'package:recast_flutter_assessment/features/home/presentation/widgets/loyalty_card_widget.dart';

class LoyaltyPointsSection extends StatelessWidget {
  const LoyaltyPointsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return Skeletonizer(
            enabled: true,
            child: LoyaltyCardWidget(
              model: MockLoyaltyPointsRepository().getLoyaltyPointsData(),
            ),
          );
        } else if (state is HomeLoaded) {
          return LoyaltyCardWidget(model: state.loyaltyData);
        } else if (state is HomeError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
