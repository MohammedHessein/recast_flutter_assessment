class LoyaltyPointsModel {
  final String title;
  final String subtitle;
  final int points;
  final double progressPercent;
  final int totalOrders;
  final List<String> recentOrderImagePaths;

  LoyaltyPointsModel({
    required this.title,
    required this.subtitle,
    required this.points,
    required this.progressPercent,
    required this.totalOrders,
    required this.recentOrderImagePaths,
  });
}
