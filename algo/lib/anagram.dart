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

  List<int> countLetters(String s) {
    List<int> letters = List.filled(26, 0);
    for (int i = 0; i < s.length; i++) {
      letters[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }
    return letters;
  }

  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    final countS = countLetters(s);
    final countT = countLetters(t);

    for (int i = 0; i < countS.length; i++) {
      if (countS[i] != countT[i]) {
        return false;
      }
    }
    return true;
  }

  bool isAnagramV2(String s, String t) {
    if (s.length != t.length) return false;

    // Use a single frequency list
    final List<int> counts = List.filled(26, 0);
    final int codeA = 'a'.codeUnitAt(0);

    // Increment for s, decrement for t in the same loop
    for (int i = 0; i < s.length; i++) {
      counts[s.codeUnitAt(i) - codeA]++;
      counts[t.codeUnitAt(i) - codeA]--;
    }

    // If they are anagrams, every slot must be 0
    return counts.every((count) => count == 0);
  }
}
