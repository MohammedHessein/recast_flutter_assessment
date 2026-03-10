import 'dart:ui';

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
}
