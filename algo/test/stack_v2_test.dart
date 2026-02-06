import 'package:algo/link_list/stack.dart' show Stack;
import 'package:test/test.dart';

void main() {
  group('Stack Tests', () {
    test('Initialization', () {
      var stack = Stack<int>(1);
      expect(stack.top?.data, equals(1));
      expect(stack.height, equals(1));
    });

    test('Print Stack', () {
      var stack = Stack<int>(1);
      expect(stack.printStack(), equals([1]));
    });

    test('Push', () {
      var stack = Stack<int>(1);
      stack.push(2);
      expect(stack.top?.data, equals(2));
      expect(stack.height, equals(2));
    });
    test('Pop', () {
      var stack = Stack<int>(1);
      stack.push(2);
      stack.push(3);

      var popped = stack.pop();

      expect(popped?.data, equals(3)); // The value we took off
      expect(stack.top?.data, equals(2)); // The new top
      expect(stack.height, equals(2)); // The new height
    });

    test('Pop Empty', () {
      var stack = Stack<int>(1);
      stack.pop(); // now empty
      var result = stack.pop();
      expect(result, isNull);
      expect(stack.height, equals(0));
    });
  });
}
