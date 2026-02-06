import 'node.dart';

class LinkList<T> {
  Node<T>? head;
  Node<T>? tail;
  int length = 0;

  LinkList(T data) {
    Node<T> node = Node<T>(data);
    head = node;
    tail = node;
    length = 1;
  }

  List<T> printList() {
    Node? temp = head;
    List<T> allNodes = [];

    while (temp != null) {
      allNodes.add(temp.data);
      temp = temp.next;
    }
    return allNodes;
  }

  int get size => length;

  bool append(T data) {
    Node<T> node = Node<T>(data);

    if (head == null) {
      head = node;
      tail = node;
    } else {
      tail!.next = node;
      tail = node;
    }
    length++;
    return true;
  }
}
