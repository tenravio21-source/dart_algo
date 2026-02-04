class Palindrome {
  static bool isPalindrome(String text) {
    int half = (text.length) ~/ 2;

    for (int i = 0; i < half; i++) {
      if (text[i] != text[text.length - 1 - i]) {
        return false;
      }
    }
    return true;
  }

  static bool isPalindromeV2(String str) {
    String reversed = str.split('').reversed.join('');
    return str == reversed;
  }
}
