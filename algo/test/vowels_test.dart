import 'package:test/test.dart';
import 'package:algo/vowels.dart'; // Adjust path to your file

void main() {
  group('Vowels', () {
    test('countVowels is a function/method', () {
      expect(Vowels.countVowels, isA<Function>());
    });

    test('returns the number of vowels used (all vowels)', () {
      expect(Vowels.countVowels('aeiou'), equals(5));
    });

    test('returns the number of vowels used (full alphabet)', () {
      expect(Vowels.countVowels('abcdefghijklmnopqrstuvwxyz'), equals(5));
    });

    test('returns 0 when no vowels are present', () {
      expect(Vowels.countVowels('bcdfghjkl'), equals(0));
    });

    test('handles casing correctly', () {
      // Ensuring "A" and "a" are both counted
      expect(Vowels.countVowels('AEIOUaeiou'), equals(10));
    });
  });
}
