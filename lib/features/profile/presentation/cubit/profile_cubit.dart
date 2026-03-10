import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:recast_flutter_assessment/features/profile/data/models/loyalty_history_model.dart';
import 'package:recast_flutter_assessment/features/profile/data/models/profile_model.dart';
import 'package:recast_flutter_assessment/features/profile/data/repositories/profile_repository.dart';

part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final MockProfileRepository repository;

  ProfileCubit(this.repository) : super(ProfileInitial());

  void loadProfileData() async {
    emit(
      ProfileLoading(
        profileData: repository.getProfileData(),
        historyData: repository.getLoyaltyHistory(),
      ),
    );
    try {
      await Future.delayed(const Duration(seconds: 1));
      final profileData = repository.getProfileData();
      final historyData = repository.getLoyaltyHistory();
      emit(ProfileLoaded(profileData, historyData));
    } catch (e) {
      emit(ProfileError('Failed to load profile data'));
    }
  }
}
