/*
 Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
 Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)

 */
import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  while (number >= 10) {
    int sum = 0;
    int temp = number;

    while (temp > 0) {
      sum += temp % 10;
      temp ~/= 10;
    }

    number = sum;
  }

  print("Final single-digit result: $number");
}
