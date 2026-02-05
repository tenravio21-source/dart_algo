import 'package:test/test.dart';
import 'package:algo/maxchar.dart'; // Adjust path to your file

void main() {
  group('MaxChar', () {
    test('getMaxChar method is defined', () {
      expect(MaxChar.getMaxChar, isA<Function>());
    });

    test('Finds the most frequently used char', () {
      expect(MaxChar.getMaxChar('a'), equals('a'));
      expect(MaxChar.getMaxChar('abcdefghijklmnaaaaa'), equals('a'));
    });

    test('Works with numbers in the string', () {
      expect(MaxChar.getMaxChar('ab1c1d1e1f1g1'), equals('1'));
    });

    test('Works with multiple characters with the same frequency', () {
      // If 'a' and 'b' appear twice, it usually returns the first one found
      // depending on how the map is iterated.
      String result = MaxChar.getMaxChar('aabb');
      expect(result, anyOf('a', 'b'));
    });
  });
}
