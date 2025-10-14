/*
Exercise 6:
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
*/
void main() {
  List<int>? numbers = [20, 15, 13];
  if (numbers.isEmpty) {
    print('No scores');
  } else {
    int sum = numbers.first + numbers.last;
    print('Summation = $sum');

    if (sum >= 40) {
      print('Sum is greater than or equal 40');
    } else {
      print('Sum is smaller than 40');
    }
  }
}
