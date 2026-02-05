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

  static List<List<T>> chunkV2<T>(List<T> list, int size) {
    List<List<T>> chunked = [];
    for (T element in list) {
      if (chunked.isEmpty || chunked.last.length == size) {
        chunked.add([element]);
      } else {
        chunked.last.add(element);
      }
    }

    return chunked;
  }
}
