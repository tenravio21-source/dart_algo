class Queue<T> {
  final List<T> _list = [];

  void add(T record) {
    _list.add(record);
  }

  T? remove() {
    if (_list.isEmpty) return null;
    return _list.removeAt(0);
  }

  T? peek() {
    if (_list.isEmpty) return null;
    return _list.first;
  }

  int get size => _list.length;
  bool get isEmpty => _list.isEmpty;
}
