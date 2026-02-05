class Vowels {
  static int countVowels(String str) {
    const String vowels = 'aeiouAEIOU';
    int count = 0;

    for (String char in str.split('')) {
      if (vowels.contains(char)) count++;
    }
    return count;
  }

  static int countVowelsV2(String str) {
    final regExp = RegExp(r'[aeiou]', caseSensitive: false);
    return regExp.allMatches(str).length;
  }

  static int countVowelsV3(String str) {
    int count = 0;
    const String vowels = 'aeiou';
    for (String char in str.toLowerCase().split('')) {
      if (vowels.contains(char)) count++;
    }
    return count;
  }
}
