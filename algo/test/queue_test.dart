import 'package:test/test.dart';
import 'package:algo/queue.dart'; // Adjust path

void main() {
  group('Queue', () {
    test('Queue is a class/type', () {
      final q = Queue<int>();
      expect(q, isA<Queue<int>>());
    });

    test('can add elements to a queue', () {
      final q = Queue<int>();
      expect(() => q.add(1), returnsNormally);
    });

    test('can remove elements from a queue', () {
      final q = Queue<int>();
      q.add(1);
      expect(q.remove(), equals(1));
    });

    test('Order of elements is maintained (FIFO)', () {
      final q = Queue<int>();
      q.add(1);
      q.add(2);
      q.add(3);

      // The first one in (1) must be the first one out
      expect(q.remove(), equals(1));
      expect(q.remove(), equals(2));
      expect(q.remove(), equals(3));
      expect(q.remove(), isNull);
    });
  });
}
