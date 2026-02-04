import 'package:test/test.dart';
import 'package:algo/palindrome.dart'; // Adjust based on your file structure

void main() {
  group('Palindrome', () {
    test('isPalindrome is a function/method', () {
      expect(Palindrome.isPalindrome, isA<Function>());
    });

    test('"aba" is a palindrome', () {
      expect(Palindrome.isPalindrome('aba'), isTrue);
    });

    test('" aba" is not a palindrome', () {
      expect(Palindrome.isPalindrome(' aba'), isFalse);
    });

    test('"aba " is not a palindrome', () {
      expect(Palindrome.isPalindrome('aba '), isFalse);
    });

    test('"greetings" is not a palindrome', () {
      expect(Palindrome.isPalindrome('greetings'), isFalse);
    });

    test('"1000000001" is a palindrome', () {
      expect(Palindrome.isPalindrome('1000000001'), isTrue);
    });
test('"Fish hsif" is not a palindrome', () {
      // Remember: 'F' and 'f' are different characters in ASCII
      expect(Palindrome.isPalindrome('Fish hsif'), isFalse);
    });

    test('"pennep" is a palindrome', () {
      expect(Palindrome.isPalindrome('pennep'), isTrue);
    });
  });
}
