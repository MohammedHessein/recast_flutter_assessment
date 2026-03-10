import 'package:injectable/injectable.dart';
import 'package:recast_flutter_assessment/core/constants/app_images.dart';
import 'package:recast_flutter_assessment/core/constants/app_strings.dart';
import 'package:recast_flutter_assessment/features/home/data/models/loyalty_points_model.dart';
import 'package:recast_flutter_assessment/features/home/data/models/venue_selection_model.dart';

@lazySingleton
class MockLoyaltyPointsRepository {
  LoyaltyPointsModel getLoyaltyPointsData() {
    return LoyaltyPointsModel(
      title: AppStrings.alterNow,
      subtitle: AppStrings.loyaltyPoints,
      points: 21750,
      progressPercent: 0.7,
      totalOrders: 24,
      recentOrderImagePaths: [
        AppImages.caeno,
        AppImages.item,
        AppImages.item,
      ],
    );
  }

  List<VenueSelectionModel> getVenueSelectionData() {
    return [
      VenueSelectionModel(
        title: AppStrings.nikkei,
        subtitle: AppStrings.ceano,
        image: AppImages.caeno,
        onTap: () {},
      ),
      VenueSelectionModel(
        title: AppStrings.restaurant,
        subtitle: AppStrings.nobiko,
        image: AppImages.nobiko,
        onTap: () {},
      ),
      VenueSelectionModel(
        title: AppStrings.casual,
        subtitle: AppStrings.dovely,
        image: AppImages.dovely,
        onTap: () {},
      ),
      VenueSelectionModel(
        title: AppStrings.bakery,
        subtitle: AppStrings.olivestree,
        image: AppImages.olivestree,
        onTap: () {},
      ),
    ];
  }
}
