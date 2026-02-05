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
}
