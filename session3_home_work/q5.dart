/*
Exercise 5:
5. a) Declare two integers a and b.
b) Print outcomes of comparison operators: a == b, a != b, a > b, a < b, a >= b, a <= b.
c) Declare int sum = a + b; check if sum equals 20 and print the boolean result.
 */

void main() {
  //a)
  int a = 50;
  int b = 6;
  //b)
  print('a == b => ${a == b}');
  print('a != b => ${a != b}');

  print('a > b => ${a > b}');

  print('a < b => ${a < b}');

  print('a >= b => ${a >= b}');
  print('a <= b => ${a <= b}');
  //c)
  int sum = a + b;
  print('sum == 20 ${sum == 20}');
}
