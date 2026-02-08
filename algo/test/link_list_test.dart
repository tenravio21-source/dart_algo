import 'package:algo/link_list/link_list.dart' show LinkList;
import 'package:test/test.dart';

// Helper for colors
// String green(String msg) => '\x1B[32m$msg\x1B[0m';
// String red(String msg) => '\x1B[31m$msg\x1B[0m';

void main() {
  group('LinkedList Tests', () {
    test('Head Value', () {
      var list = LinkList<int>(10);
      // if (list.head?.data == 10) {
      //   print(green('Test Passed: ${list.head?.data}'));
      // } else {
      //   print(red('Test Failed: ${list.head?.data}'));
      // }
      expect(list.head?.data, equals(10));
    });

    test('Print List', () {
      var list = LinkList<int>(10);
      list.append(5);
      list.append(16);
      var result = list.printList();
      // if (result.toString() == [10, 5, 16].toString()) {
      //   print(green('Test Passed: $result'));
      // } else {
      //   print(red('Test Failed: $result'));
      // }
      expect(result, equals([10, 5, 16]));
    });

    test('Length', () {
      var list = LinkList<int>(10);
      expect(list.length, equals(1));
      // print(green('Test Passed: Length is ${list.length}'));
    });

    test('Append', () {
      var list = LinkList<int>(10);
      list.append(5);
      expect(list.tail?.data, equals(5));
      // print(green('Test Passed: Tail is ${list.tail?.data}'));
    });

    test('Pop', () {
      var list = LinkList<int>(10);
      list.append(5);
      list.append(16);
      list.pop();
      expect(list.tail?.data, equals(5));
      // print(green('Test Passed: New tail after pop is ${list.tail?.data}'));
    });

    test('Get Index', () {
      var list = LinkList<int>(10);
      list.append(5);
      list.append(16);
      var node = list.get(1);
      expect(node?.data, equals(5));
      // print(green('Test Passed: Value at index 1 is ${node?.data}'));
    });

    test('Reverse', () {
      var list = LinkList<int>(10);
      list.append(5);
      list.append(16);
      list.reverse();
      expect(list.head?.data, equals(16));
      // print(green('Test Passed: Head after reverse is ${list.head?.data}'));
    });
  });
}
