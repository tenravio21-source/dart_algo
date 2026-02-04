import 'package:test/test.dart';
import 'package:algo/capitalize.dart'; // Adjust path to your Capitalize class

void main() {
  test('Capitalize.capitalize is a function/method', () {
    // In Dart, we check if the tear-off of the method is a function type
    expect(Capitalize.capitalize, isA<Function>());
  });

  test('capitalizes the first letter of every word in a sentence', () {
    final result = Capitalize.capitalize('hi there, how is it going?');
    expect(result, equals('Hi There, How Is It Going?'));
  });

  test('capitalizes the first letter', () {
    final result = Capitalize.capitalize('i love breakfast at bill miller bbq');
    expect(result, equals('I Love Breakfast At Bill Miller Bbq'));
  });
}
