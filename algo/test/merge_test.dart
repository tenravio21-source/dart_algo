import 'package:algo/merge.dart' show MergeSort;
import 'package:test/test.dart';

void main() {
  test('Merge Sort - Large Random List', () {
    var list = [5, 3, 8, 1, 2, 7, 4, 6];
    expect(MergeSort.sort(list), equals([1, 2, 3, 4, 5, 6, 7, 8]));
  });
}
