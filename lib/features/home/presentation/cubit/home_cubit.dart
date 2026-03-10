import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:recast_flutter_assessment/features/home/data/models/loyalty_points_model.dart';
import 'package:recast_flutter_assessment/features/home/data/models/venue_selection_model.dart';
import 'package:recast_flutter_assessment/features/home/data/repositories/mock_loyalty_points_repository.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final MockLoyaltyPointsRepository repository;

  HomeCubit(this.repository) : super(HomeInitial());

  void loadHomeData() async {
    emit(HomeLoading());
    try {
      await Future.delayed(const Duration(seconds: 2));
      final loyaltyData = repository.getLoyaltyPointsData();
      final venueData = repository.getVenueSelectionData();
      emit(HomeLoaded(loyaltyData, venueData));
    } catch (e) {
      emit(HomeError('Failed to load data'));
    }
  }
}
