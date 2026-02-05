class MaxChar {
  static String getMaxChar(String str) {
    Map<String, int> charMap = <String, int>{};
    int max = 0;
    String maxChar = '';

    for (String char in str.split('')) {
      charMap[char] = (charMap[char] ?? 0) + 1;
    }
    for (String char in charMap.keys) {
      if (charMap[char]! > max) {
        maxChar = char;
        max = charMap[char]!;
      }
    }
    return maxChar;
  }
}
