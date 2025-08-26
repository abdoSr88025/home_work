/*
 Q5
 Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal
 */

void main() {
  String text = 'EGP 12.50';
  String value = text.split(' ')[1];
  double number = double.parse(value);
  print(number);
}
