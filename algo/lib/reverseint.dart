class ReverseInt {
  static int reverseInt(int n) {
    final String result = n.abs().toString().split('').reversed.join();
    final int reverse = int.parse(result);

    return reverse * n.sign;
  }
}
