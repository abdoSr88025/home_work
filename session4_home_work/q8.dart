/*
Exercise 8:
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.

*/
void main() {
  int a = 15;
  int b = 10;
  int c = 20;

  bool res1 = a > b;
  bool res2 = b < c;
  bool res3 = a < b || c > a;
  bool res4 = (a + b) == c;
  bool res5 = (a > b) && (c > a);

  print('a > b       : $res1');
  print('b < c       : $res2');
  print('a < b || c > a    : $res3');
  print('(a + b) == c      : $res4');
  print('(a > b) && (c > a): $res5');

  if (res3) {
    print('Rule passed ');
  } else {
    print('Rule failed ');
  }
}
