import 'package:injectable/injectable.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/features/profile/data/models/loyalty_history_model.dart';

import '../models/profile_model.dart';

@lazySingleton
class MockProfileRepository {
  ProfileModel getProfileData() {
    return ProfileModel(
      name: AppStrings.userName,
      phoneNumber: '+962 234 567 2349',
    );
  }

  List<LoyaltyHistoryModel> getLoyaltyHistory() {
    return [
      LoyaltyHistoryModel(
        title: 'Nobiko Bistro',
        date: '06 Jan, 2025',
        points: '325 Credits',
        isEarned: true,
      ),
      LoyaltyHistoryModel(
        title: 'Nobiko Bistro',
        date: '06 Jan, 2025',
        points: '325 Credits',
        isEarned: true,
      ),
      LoyaltyHistoryModel(
        title: 'Nobiko Bistro',
        date: '06 Jan, 2025',
        points: '325 Credits',
        isEarned: true,
      ),
      LoyaltyHistoryModel(
        title: 'Nobiko Bistro',
        date: '06 Jan, 2025',
        points: '325 Credits',
        isEarned: true,
      ),
    ];
  }
}
