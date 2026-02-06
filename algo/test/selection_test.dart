import 'package:algo/selection.dart' show Selection;
import 'package:test/test.dart';

void main() {
  test('Selection Sort - Basic', () {
    expect(Selection.selectionSort([4, 2, 1, 3]), equals([1, 2, 3, 4]));
  });

  test('Selection Sort - Handled duplicated', () {
    expect(Selection.selectionSort([2, 1, 2]), equals([1, 2, 2]));
  });
}
