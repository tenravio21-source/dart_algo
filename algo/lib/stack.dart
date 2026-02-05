class Stack<T> {
  final List<T> _data = [];

  void push(T record) {
    _data.add(record);
  }

  T? pop() {
    if (_data.isEmpty) return null;
    return _data.removeLast();
  }

  T? peek() {
    if (_data.isEmpty) return null;
    return _data.last;
  }

  int get size => _data.length;

  bool get isEmpty => _data.isEmpty;
}
