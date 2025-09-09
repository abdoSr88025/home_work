/*
 Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
 set its initial values using a constructor. - Then change the age of the object and print the updated
 details
*/

void main() {
  Person person = Person('Ahmed', 18);
  person.printDetails();
  person.age = 30;
  person.printDetails();
}

class Person {
  String? name;
  int? age;
  Person(this.name, this.age);
  void printDetails() {
    print('Name is $name and age is $age');
  }
}
