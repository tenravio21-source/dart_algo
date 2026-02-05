import 'package:test/test.dart';
import 'package:algo/steps.dart'; // Adjust path

void main() {
  group('Steps Challenge', () {
    test('Steps function exists', () {
      expect(Steps.build, isA<Function>());
    });

    test('steps(2) returns correct strings', () {
      final res = Steps.build(2);
      expect(res[0], equals('# '));
      expect(res[1], equals('##'));
      expect(res.length, equals(2));
    });

    test('steps(3) returns correct strings', () {
      final res = Steps.build(3);
      expect(res[0], equals('#  '));
      expect(res[1], equals('## '));
      expect(res[2], equals('###'));
      expect(res.length, equals(3));
    });

    test('Each step has the correct length of N', () {
      int n = 4;
      final res = Steps.build(n);
      for (var stair in res) {
        expect(stair.length, equals(n));
      }
    });
  });
}
