class ReverseString {
  static String reverseString(String s) {
    return s.split('').reversed.join();
  }

  static String reverse(String str) {
    return str.split('').fold('', (rev, char) => char + rev);
  }

  static String reverseV2(String str) {
    String reversed = '';

    for (String character in str.split('')) {
      reversed = character + reversed;
    }

    return reversed;
  }

  static String reverseV3(String str) {
    // We work with a list of codes (numbers) which is much faster than strings
    List<int> codes = str.codeUnits;
    // Create a list with the same length
    List<int> reversedCodes = List.filled(codes.length, 0);

    for (int i = 0; i < codes.length; i++) {
      reversedCodes[i] = codes[codes.length - 1 - i];
    }

    return String.fromCharCodes(reversedCodes);
  }
}
