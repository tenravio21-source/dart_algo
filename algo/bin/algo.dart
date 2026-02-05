import 'package:algo/chunk.dart' show Chunk;

void main(List<String> arguments) {
  List<List<int>> list = Chunk.chunk([1, 2, 3], 2);
  print(list);
}
