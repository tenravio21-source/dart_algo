class ReverseInt {
  static int reverseInt(int n) {
    final String result = n.abs().toString().split('').reversed.join();
    final int reverse = int.parse(result);

    return reverse * n.sign;
  }

  static int reverseIntMath(int n) {
    int input = n.abs();
    int reversed = 0;

    while (input > 0) {
      // 1. Get the last digit (e.g., 123 % 10 = 3)
      int lastDigit = input % 10;

      // 2. Add it to reversed (shifting existing digits left)
      reversed = (reversed * 10) + lastDigit;

      // 3. Remove the last digit from input (e.g., 123 ~/ 10 = 12)
      input = input ~/ 10;
    }

    return reversed * n.sign;
  }
}
