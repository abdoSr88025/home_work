/*
 Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
 Then, check if the average is greater than 50 or not.
 */

import 'dart:io';

void main() {
  print('Enter number 1');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter number 2');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Enter number 3');
  int num3 = int.parse(stdin.readLineSync()!);
  int sum = num1 + num2 + num3;
  double average = sum / 3;
  print('Sum = $sum');
  print('Average = $average');
  if (average > 50) {
    print('Average is greater than 50');
  } else {
    print('Average is smaller than 50');
  }
}
