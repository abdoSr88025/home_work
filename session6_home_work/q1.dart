/*
Q1
 Create a program that declares an integer for birthYear and calculates the age assuming the
 current year is 2025. Print 'You are X years old'
 */
import 'dart:io';

void main() {
  print('Enter your birth yaer');
  int birthYear = int.parse(stdin.readLineSync()!);
  int currentYear = 2025;
  int age = currentYear - birthYear;
  print('You are $age years old');
}
