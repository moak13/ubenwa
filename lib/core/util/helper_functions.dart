class HelperFunctions {
  /// This function transform the country code to a string flag image
  static convertToFlag(String countryCode) {
    String _flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0).codeUnitAt(0) + 127397));
    return _flag;
  }
}
