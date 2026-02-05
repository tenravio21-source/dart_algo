import 'package:test/test.dart';
import 'package:algo/chunk.dart'; // Adjust based on your file path

void main() {
  group('Array Chunking', () {
    test('chunk function is defined', () {
      expect(Chunk.chunk, isNotNull);
    });

    test('chunks an array of 10 elements with a size of 2', () {
      final arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      final chunked = Chunk.chunk(arr, 2);

      expect(
        chunked,
        equals([
          [1, 2],
          [3, 4],
          [5, 6],
          [7, 8],
          [9, 10],
        ]),
      );
    });

    test('chunks an array of 3 elements with a size of 1', () {
      final arr = [1, 2, 3];
      final chunked = Chunk.chunk(arr, 1);

      expect(
        chunked,
        equals([
          [1],
          [2],
          [3],
        ]),
      );
    });

    test('chunks an array of 5 elements with a size of 3', () {
      final arr = [1, 2, 3, 4, 5];
      final chunked = Chunk.chunk(arr, 3);

      expect(
        chunked,
        equals([
          [1, 2, 3],
          [4, 5],
        ]),
      );
    });

    test('chunks an array of 13 elements with a size of 5', () {
      final arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
      final chunked = Chunk.chunk(arr, 5);

      expect(
        chunked,
        equals([
          [1, 2, 3, 4, 5],
          [6, 7, 8, 9, 10],
          [11, 12, 13],
        ]),
      );
    });

    test('returns an empty list if chunkSize is 0 or less', () {
      expect(Chunk.chunk([1, 2, 3], 0), equals([]));
      expect(Chunk.chunk([1, 2, 3], -1), equals([]));
    });
  });
}
