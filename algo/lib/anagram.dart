class AnagramsTools {
  static bool check(String str1, String str2) {
    String clean1 = str1.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    String clean2 = str2.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

    if (clean1.length != clean2.length) return false;

    List<String> list1 = clean1.split('')..sort();
    List<String> list2 = clean2.split('')..sort();

    return list1.join() == list2.join();
  }

  static bool checkAnagram(String str1, String str2) {
    Map<String, int> map1 = anagrams(str1);
    Map<String, int> map2 = anagrams(str2);

    if (map1.length != map2.length) return false;

    for (String char in map1.keys) {
      if (map1[char] != map2[char]) return false;
    }
    return true;
  }

  static Map<String, int> anagrams(String str) {
    Map<String, int> charMap = {};

    for (String char
        in str
            .replaceAll(RegExp(r'[^a-zA-Z0-9]'), '')
            .toLowerCase()
            .split('')) {
      charMap[char] = (charMap[char] ?? 0) + 1;
    }
    return charMap;
  }
}
