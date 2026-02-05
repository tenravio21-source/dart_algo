import 'dart:math';

class Chunk {
  static List<List<T>> chunk<T>(List<T> list, int chunkSize) {
    if (chunkSize <= 0) return [];

    return List.generate((list.length / chunkSize).ceil(), (index) {
      int start = index * chunkSize;
      int end = (index + 1) * chunkSize;

      return list.getRange(start, min(end, list.length)).toList();
    });
  }
}
