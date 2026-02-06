import 'package:algo/insertion.dart' show Insertion;
import 'package:test/test.dart';

void main() {
  group('Insertion Sort Tests', () {
    test('Sorts a mixed list', () {
      expect(Insertion.insertionSort([3, 1, 4, 2]), equals([1, 2, 3, 4]));
    });

    test('Handles already sorted list', () {
      expect(Insertion.insertionSort([1, 2, 3]), equals([1, 2, 3]));
    });

    test('Handles negative numbers', () {
      expect(Insertion.insertionSort([0, -1, 5, -2]), equals([-2, -1, 0, 5]));
    });
  });
}
