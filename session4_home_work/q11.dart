/*
 Write a Dart program that converts a list of names to a set of unique values. Create a map with
 counts of occurrences. Compare lengths and print a message if a specific name appears more than
 once
 */

void main() {
  List<String> names = ['Ali', 'Sara', 'Omar', 'Ali', 'Ahmed', 'Sara'];

  Set<String> uniqueNames = names.toSet();

  Map<String, int> nameCounts = names.fold({}, (map, name) {
    map[name] = (map[name] ?? 0) + 1;
    return map;
  });

  print('Original list length: ${names.length}');
  print('Unique names length: ${uniqueNames.length}');

  if (names.length != uniqueNames.length) {
    print('Duplicates found!');
  } else {
    print('All names are unique.');
  }

  String specificName = 'Ali';
  if ((nameCounts[specificName] ?? 0) > 1) {
    print(
      '$specificName appears more than once (${nameCounts[specificName]} times).',
    );
  } else {
    print('$specificName is unique.');
  }

  print('Name counts: $nameCounts');
}
