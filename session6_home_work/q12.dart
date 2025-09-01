/*
 Q12
 Create a function that takes named parameters firstName, lastName, and an optional named
 parameter age. Print the full name and, if age is provided, also print 'Age: X'
 */

void main() {
  person(firstName: 'Ahmed', lastName: 'Ali');
  person(firstName: 'Ali', lastName: 'Omar', age: 30);
}

void person({required String firstName, required String lastName, int? age}) {
  print('Full name is $firstName $lastName');
  if (age != null) {
    print('Age is $age');
  }
}
