class Fizzbuzz {
  static String fizzbuzz(int n) {
    if (n % 3 == 0 && n % 5 == 0) {
      return 'fizzbuzz';
    } else if (n % 3 == 0) {
      return 'fizz';
    } else if (n % 5 == 0) {
      return 'buzz';
    } else {
      return n.toString();
    }
  }

  static String fizzbuzzV2(int n) {
    String result = "";

    if (n % 3 == 0) result += "fizz";
    if (n % 5 == 0) result += "buzz";

    // If the string is still empty, the number wasn't divisible by 3 or 5
    return result.isEmpty ? n.toString() : result;
  }
}
