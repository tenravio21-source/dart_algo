import 'package:test/test.dart';
import 'package:algo/fizzbuzz.dart';

void main() {
  group('Fizzbuzz Logic Tests', () {
    test('returns "fizzbuzz" for multiples of 3 and 5', () {
      expect(Fizzbuzz.fizzbuzz(15), equals('fizzbuzz'));
      expect(Fizzbuzz.fizzbuzz(30), equals('fizzbuzz'));
    });

    test('returns "fizz" for multiples of 3', () {
      expect(Fizzbuzz.fizzbuzz(3), equals('fizz'));
      expect(Fizzbuzz.fizzbuzz(9), equals('fizz'));
    });

    test('returns "buzz" for multiples of 5', () {
      expect(Fizzbuzz.fizzbuzz(5), equals('buzz'));
      expect(Fizzbuzz.fizzbuzz(10), equals('buzz'));
    });

    test('returns the number as a string for non-multiples', () {
      expect(Fizzbuzz.fizzbuzz(1), equals('1'));
      expect(Fizzbuzz.fizzbuzz(7), equals('7'));
      expect(Fizzbuzz.fizzbuzz(11), equals('11'));
    });

    test('integration: testing a sequence', () {
      var results = [1, 2, 3, 4, 5].map((n) => Fizzbuzz.fizzbuzz(n)).toList();
      expect(results, equals(['1', '2', 'fizz', '4', 'buzz']));
    });
  });
}
