import 'package:algo/reversestring.dart';
import 'package:test/test.dart';

void main() {
  group('String Reversal', () {
    test('Reverse function exists', () {
      // In Dart, we check if the reference is not null
      expect(ReverseString.reverse, isNotNull);
    });

    test('Reverse reverses a string', () {
      expect(ReverseString.reverse('abcd'), equals('dcba'));
    });

    test('Reverse reverses a string with leading spaces', () {
      // Note: '  abcd' reversed becomes 'dcba  '
      expect(ReverseString.reverse('  abcd'), equals('dcba  '));
    });
  });
}
