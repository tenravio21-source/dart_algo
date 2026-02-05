import 'package:test/test.dart';
import 'package:algo/reverseint.dart';

void main() {
  group('ReverseInt', () {
    test('Handles positive numbers', () {
      expect(ReverseInt.reverseInt(15), equals(51));
      expect(ReverseInt.reverseInt(981), equals(189));
    });

    test('Handles negative numbers', () {
      expect(ReverseInt.reverseInt(-15), equals(-51));
      expect(ReverseInt.reverseInt(-5), equals(-5));
    });

    test('Handles numbers ending in zero', () {
      expect(ReverseInt.reverseInt(500), equals(5));
      expect(ReverseInt.reverseInt(-90), equals(-9));
    });
  });
}
