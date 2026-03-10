/// Regular expressions used for text formatting and validation.
class AppRegex {
  static final RegExp pointsFormatter = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
}
