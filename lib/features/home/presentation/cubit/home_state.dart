part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final LoyaltyPointsModel loyaltyData;
  final List<VenueSelectionModel> venueData;
  HomeLoaded(this.loyaltyData, this.venueData);
}

class HomeError extends HomeState {
  final String message;
  HomeError(this.message);
}
