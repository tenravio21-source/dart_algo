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
}
