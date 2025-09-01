/*
 Q2
 Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers.

*/
void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  double average = sum / numbers.length;
  print('Average = $average');
}
