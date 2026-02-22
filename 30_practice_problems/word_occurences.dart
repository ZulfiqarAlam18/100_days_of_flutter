int countOccurrences(String text, String word) {
  final regex = RegExp(r'\b' + RegExp.escape(word) + r'\b', caseSensitive: false);
  return regex.allMatches(text).length;
}

void main() {
  String paragraph = "Dart is great. I love dart because Dart is fast.";
  print(countOccurrences(paragraph, "dart")); // 3
}