import 'package:test/test.dart';
import 'package:algo/stack.dart'; // Adjust path

void main() {
  group('Stack', () {
    test('Stack is a class/type', () {
      final s = Stack<int>();
      expect(s, isA<Stack<int>>());
    });

    test('stack can add and remove items', () {
      final s = Stack<int>();
      s.push(1);
      expect(s.pop(), equals(1));
      s.push(2);
      expect(s.pop(), equals(2));
    });

    test('stack follows Last-In, First-Out (LIFO)', () {
      final s = Stack<int>();
      s.push(1);
      s.push(2);
      s.push(3);

      // The last one pushed (3) must be the first one out
      expect(s.pop(), equals(3));
      expect(s.pop(), equals(2));
      expect(s.pop(), equals(1));
    });

    test('peek returns the top element but doesn\'t pop it', () {
      final s = Stack<int>();
      s.push(1);
      s.push(2);
      s.push(3);

      expect(s.peek(), equals(3));
      expect(s.pop(), equals(3));

      expect(s.peek(), equals(2));
      expect(s.pop(), equals(2));

      expect(s.peek(), equals(1));
      expect(s.pop(), equals(1));
    });

    test('pop and peek return null on an empty stack', () {
      final s = Stack<int>();
      expect(s.pop(), isNull);
      expect(s.peek(), isNull);
    });
  });
}
