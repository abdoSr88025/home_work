/*
Exercise 4:
4. a) Declare int x and double y with any values.
b) Create num result = x + y; print it and also result.toDouble().
c) Print results of x - 1, y * 3, and x / 2.

*/
void main() {
  //a)
  int x = 50;
  double y = 6.00;
  //b)
  num result = x + y;
  print('Result = $result');
  print('Using toDouble = ${result.toDouble()}');
  //c)
  print('x-1 = ${x - 1}');
  print('y * 3 = ${y * 3}');
  print('x / 2 = ${x / 2}');
}
