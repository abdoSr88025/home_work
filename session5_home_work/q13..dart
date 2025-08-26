/*
 Q13
 Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
 each name appears. Print only the names that appear more than once
  */

void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> nameCounts = {};

  for (String name in names) {
    nameCounts[name] = (nameCounts[name] ?? 0) + 1;
  }

  nameCounts.forEach((name, count) {
    if (count > 1) {
      print('$name: $count times');
    }
  });
}
