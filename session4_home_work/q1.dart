/*
Exercise 1:
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
 */

//a)
void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7, 8, 9, 7];
  print('nunbers list $numbers');
  print('nunbers list length ${numbers.length}');
  var nums = numbers.toSet();
  print('nums Set $nums');
  print('nunbers Set length ${nums.length}');
  if (nums.length < numbers.length) {
    print('Duplicates were removed!');
  } else {
    print('No duplicates found.');
  }
}
