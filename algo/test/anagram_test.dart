import 'package:algo/anagram.dart' show AnagramsTools;
import 'package:test/test.dart';

void main() {
  group('AnagramsTools', () {
    test('"hello" is an anagram of "llohe"', () {
      expect(AnagramsTools.checkAnagram('hello', 'llohe'), isTrue);
    });

    test('"Whoa! Hi!" is an anagram of "Hi! Whoa!"', () {
      expect(AnagramsTools.checkAnagram('Whoa! Hi!', 'Hi! Whoa!'), isTrue);
    });

    test('"One One" is not an anagram of "Two two two"', () {
      expect(AnagramsTools.checkAnagram('One One', 'Two two two'), isFalse);
    });

    test(
      '"A tree, a life, a bench" is not an anagram of "A tree, a fence, a yard"',
      () {
        expect(
          AnagramsTools.checkAnagram(
            'A tree, a life, a bench',
            'A tree, a fence, a yard',
          ),
          isFalse,
        );
      },
    );
  });
}
