/*
Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
 numbers, and then calculate the difference between them

*/
import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 1; i <= 5; i++) {
    print('Enter number $i');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  numbers.sort();

  int smallestNum = numbers.first;

  int largestNum = numbers.last;

  int difference = largestNum - smallestNum;

  print("Numbers entered: $numbers");
  print("Largest number: $largestNum");
  print("Smallest number: $smallestNum");
  print("Difference: $difference");
}
