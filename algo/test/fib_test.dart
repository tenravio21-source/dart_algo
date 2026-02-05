import 'package:test/test.dart';
import 'package:algo/fib.dart';

void main() {
  group('Fibonacci', () {
    test('fib function is defined', () {
      expect(Fib.fib, isA<Function>());
    });

    test('calculates correct fib value for 1', () {
      expect(Fib.fib(1), equals(1));
    });

    test('calculates correct fib value for 2', () {
      expect(Fib.fib(2), equals(1));
    });

    test('calculates correct fib value for 3', () {
      expect(Fib.fib(3), equals(2));
    });

    test('calculates correct fib value for 4', () {
      expect(Fib.fib(4), equals(3));
    });

    test('calculates correct fib value for 39', () {
      // This is the stress test for your memoization!
      expect(Fib.fib(39), equals(63245986));
    });
  });
}
