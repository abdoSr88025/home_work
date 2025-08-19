/*
Exercise 3:
3. a) Create String phrase = 'Learning Dart'.
b) Print phrase.length, phrase.toLowerCase(), and phrase.contains('Dart').
c) Trim spaces from String test = ' Dart ' and print the result.
*/
void main() {
  //a)
  String phrase = 'Learning Dart';
  //b)
  print('length = ${phrase.length}');
  print('Using lower case => ${phrase.toLowerCase()}');
  print('Using contains => ${phrase.contains('Dart')}');
  //c)
  String test = ' Dart ';
  print('Using trim => ${test.trim()}');
}
