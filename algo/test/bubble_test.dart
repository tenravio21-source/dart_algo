import 'package:algo/bubble.dart' show Bubble;
import 'package:test/test.dart';

void main() {
  group('Sort Algorithms:', () {
    test('Bubble Sort - Basic List', () {
      List<int> unsorted = [1, 2, 5, 7, 6];
      List<int> result = Bubble.bubbleSort(unsorted);

      expect(result, equals([1, 2, 5, 6, 7]));
    });

    test('Bubble Sort - Already Sorted', () {
      expect(Bubble.bubbleSort([1, 2, 3]), equals([1, 2, 3]));
    });

    test('Bubble Sort - Reversed List', () {
      expect(Bubble.bubbleSort([5, 4, 3, 2, 1]), equals([1, 2, 3, 4, 5]));
    });

    test('Bubble Sort - Empty List', () {
      expect(Bubble.bubbleSort([]), equals([]));
    });
  });
}
