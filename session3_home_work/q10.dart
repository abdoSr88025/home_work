/*
Exercise 10:
10. a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
after each.
b) Create var greeting = 'Hi'; change it to another String and print.
c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).
 */
void main() {
  //a)
  dynamic x = 100;
  print(x);
  x = 'Cairo';
  print(x);
  //dynamic is a weak data type accepts any type and the value can accept changes in run time
  //b)
  var greeting = 'Hi';
  greeting = 'Hello programmers';
  print(greeting);
  //var is a keyword wich take any data type in compile time but once value assigned it will accept only the first one
  //c)
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
