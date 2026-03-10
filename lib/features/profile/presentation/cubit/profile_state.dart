part of 'profile_cubit.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {
  final ProfileModel? profileData;
  final List<LoyaltyHistoryModel>? historyData;
  ProfileLoading({this.profileData, this.historyData});
}

class ProfileLoaded extends ProfileState {
  final ProfileModel profileData;
  final List<LoyaltyHistoryModel> historyData;
  ProfileLoaded(this.profileData, this.historyData);
}

class ProfileError extends ProfileState {
  final String message;
  ProfileError(this.message);
}
