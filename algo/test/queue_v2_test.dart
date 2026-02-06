import 'package:algo/link_list/queue.dart' show Queue;
import 'package:test/test.dart';

void main() {
  group('Queue Tests', () {
    test('Initialization', () {
      var queue = Queue<int>(1);
      expect(queue.first?.data, equals(1));
      expect(queue.last?.data, equals(1));
      expect(queue.length, equals(1));
    });

    test('Enqueue', () {
      var queue = Queue<int>(1);
      queue.enqueue(2);
      expect(queue.first?.data, equals(1));
      expect(queue.last?.data, equals(2));
      expect(queue.length, equals(2));
    });

    test('Dequeue', () {
      var queue = Queue<int>(1);
      queue.enqueue(2);
      queue.enqueue(3);

      var dequeuedNode = queue.dequeue();

      expect(dequeuedNode?.data, equals(1)); // First in, first out
      expect(queue.first?.data, equals(2)); // New first
      expect(queue.last?.data, equals(3)); // Last remains the same
      expect(queue.length, equals(2));
    });

    test('Dequeue Until Empty', () {
      var queue = Queue<int>(1);
      queue.dequeue();

      expect(queue.first, isNull);
      expect(queue.last, isNull);
      expect(queue.length, equals(0));

      // Checking that dequeueing an empty queue returns null
      expect(queue.dequeue(), isNull);
    });
  });
}
