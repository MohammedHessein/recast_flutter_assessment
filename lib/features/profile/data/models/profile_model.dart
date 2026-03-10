class ProfileModel {
  final String name;
  final String phoneNumber;
  final String? avatarUrl;

  ProfileModel({
    required this.name,
    required this.phoneNumber,
    this.avatarUrl,
  });
}
