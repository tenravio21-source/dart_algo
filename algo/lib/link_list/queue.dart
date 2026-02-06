import 'package:algo/link_list/node.dart' show Node;

class Queue<T> {
  Node<T>? first;
  Node<T>? last;
  int length = 0;

  Queue(T value) {
    Node<T> newNode = Node(value);
    first = newNode;
    last = newNode;
    length = 1;
  }

  bool enqueue(T value) {
    Node<T> newNode = Node(value);
    if (length == 0) {
      first = newNode;
      last = newNode;
    } else {
      last!.next = newNode;
      last = newNode;
    }
    length++;
    return true;
  }

  Node<T>? dequeue() {
    if (length == 0) return null;

    Node<T>? temp = first;
    if (length == 1) {
      first = null;
      last = null;
    } else {
      first = first!.next;
      temp!.next = null;
    }
    length--;
    return temp;
  }
}
