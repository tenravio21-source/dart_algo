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

  Node<T>? pop() {
    if (length == 0) return null;
    Node<T>? temp = head;
    Node<T>? prev = head;

    while (temp!.next != null) {
      prev = temp;
      temp = temp.next;
    }
    prev!.next = null;
    tail = prev;
    length--;
    if (length == 0) {
      head = null;
      tail = null;
    }
    return temp;
  }

  bool prepend(T data) {
    Node<T> node = Node<T>(data);

    if (head == null) {
      head = node;
      tail = node;
    } else {
      node.next = head;
      head = node;
    }
    length++;
    return true;
  }

  Node<T>? popFirst() {
    if (length == 0) return null;
    Node<T>? temp = head;
    head = head!.next;
    length--;
    if (length == 0) {
      tail = null;
    }
    return temp;
  }

  Node<T>? get(int index) {
    if (index < 0 || index >= length) return null;
    Node<T>? temp = head;
    while (temp?.next != null) {
      temp = temp!.next;
    }
    return temp;
  }
}
