import 'package:algo/link_list/node.dart' show Node;

class Stack<T> {
  Node<T>? top;
  int height = 0;

  Stack(T value) {
    Node<T> newNode = Node(value);
    top = newNode;
    height = 1;
  }

  List<T> printStack() {
    Node<T>? current = top;
    List<T> stackList = [];
    while (current != null) {
      stackList.add(current.data);
      current = current.next;
    }
    return stackList;
  }

  void push(T value) {
    Node<T> newNode = Node(value);
    if (height == 0) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
    height++;
  }

  Node<T>? pop() {
    if (height == 0) return null;

    Node<T>? temp = top;
    top = top?.next;
    temp?.next = null; // Disconnect the node from the stack
    height--;

    return temp;
  }
}
