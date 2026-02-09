class Steps {
  static List<String> build(int n) {
    List<String> result = [];

    // Outer loop for rows
    for (int row = 0; row < n; row++) {
      String stair = '';

      // Inner loop for columns
      for (int col = 0; col < n; col++) {
        if (col <= row) {
          stair += '#';
        } else {
          stair += ' ';
        }
      }
      result.add(stair);
    }

    return result;
  }

  static List<String> buildV2(int n) {
    return List.generate(n, (row) {
      // For each row, create a string of length n
      return List.generate(n, (col) => col <= row ? '#' : ' ').join();
    });
  }

  static List<String> buildV3(int n) {
    List<String> result = [];
    for (int i = 1; i <= n; i++) {
      // Repeat '#' i times, then repeat ' ' (n-i) times
      result.add(('#' * i).padRight(n));
    }
    return result;
  }
}
