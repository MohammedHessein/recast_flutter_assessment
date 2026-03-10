import 'dart:ui';

import 'package:recast_flutter_assessment/core/constants/app_images.dart';

class VenueSelectionModel {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  VenueSelectionModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  factory VenueSelectionModel.initial() {
    return VenueSelectionModel(
      image: AppImages.caeno,
      title: 'Nikkei',
      subtitle: 'Ceano',
      onTap: () {},
    );
  }
}
