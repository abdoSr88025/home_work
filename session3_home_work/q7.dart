/*
Exercise 7:
7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result.
 */
void main() {
  //a)
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  //b)
  var nums = numbers.toSet();
  //c)
  nums.add(10);
  print(nums);
  nums.remove(4);
  print(nums);
  print(nums.contains(6));
}
