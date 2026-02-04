class Capitalize {
  static String capitalize(String str) {
    if (str.isEmpty) return str;
    String result = str[0].toUpperCase();
    for (int i = 1; i < str.length; i++) {
      if (str[i - 1] == " ") {
        result += str[i].toUpperCase();
      } else {
        result += str[i];
      }
    }
    return result;
  }

  static String capitalizeV2(String str) {
    final List<String> words = [];
    for (String word in str.split(' ')) {
      if (word.isNotEmpty) {
        words.add(word[0].toUpperCase() + word.substring(1));
      } else {
        words.add('');
      }
    }
    return words.join(' ');
  }
}
