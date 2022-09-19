extension StringExtension on String {
  String capitalise() {
    return this[0].toUpperCase() + substring(1);
  }

  String truncate(int preferredLength) {
    if (length > preferredLength) {
      return '${substring(0, preferredLength - 3)}...';
    }
    return this;
  }
}
