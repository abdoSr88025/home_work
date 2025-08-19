/*
Exercise 6:
6. a) Create List animals with three values.
b) Add a new animal, remove the last one, and update the second element.
c) Print animals.first, animals.last, and animals.length
*/
void main() {
  //a)
  List<String> animals = ['Dog', 'Cat', 'Horse'];
  //b)
  animals.add('Lion');
  animals.removeLast();
  animals[1] = 'Snake';
  //c)
  print('animals.first => ${animals.first}');
  print('animals.last => ${animals.last}');
  print('animals.length => ${animals.length}');
}
