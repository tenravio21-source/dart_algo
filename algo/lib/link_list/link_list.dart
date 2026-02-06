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
    for (int i = 0; i < index; i++) {
      temp = temp!.next;
    }
    return temp;
  }

  bool setValue(int index, T value) {
    Node<T>? node = get(index);
    if (node != null) {
      node.data = value;
      return true;
    }
    return false;
  }

  bool insert(int index, T value) {
    if (index < 0 || index > length) return false;
    if (index == 0) return prepend(value);
    if (index == length) return append(value);
    Node<T> node = Node<T>(value);
    Node<T>? temp = get(index - 1);
    node.next = temp!.next;
    temp.next = node;
    length++;
    return true;
  }

  Node<T>? remove(int index) {
    if (index < 0 || index >= length) return null;
    if (index == 0) return popFirst();
    if (index == length - 1) return pop();
    Node<T>? prev = get(index - 1);
    Node<T>? temp = prev!.next;
    prev.next = temp!.next;
    temp.next = null;
    length--;
    return temp;
  }

  bool reverse() {
    if (length <= 1) return true;
    Node<T>? temp = head;
    head = tail;
    tail = temp;

    Node<T>? after = temp!.next;
    Node<T>? before;
    for (int i = 0; i < length; i++) {
      after = temp?.next;
      temp?.next = before;
      before = temp;
      temp = after;
    }
    return true;
  }
}
