/*
 Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
 number and the second largest number (without sorting the list).
 */

import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 6; i++) {
    print("Enter number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int largestNum = numbers[0];
  int secondLargestNum = numbers[0];

  for (int n in numbers) {
    if (n > largestNum) {
      secondLargestNum = largestNum;
      largestNum = n;
    } else if (n > secondLargestNum && n != largestNum) {
      secondLargestNum = n;
    }
  }

  print("Largest number: $largestNum");
  print("Second largest number: $secondLargestNum");
}
