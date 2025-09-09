/*
 Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
 to set the values when creating the object. - In main(), create two car objects with different data and
 print their details.

*/
class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void showDetails() {
    print("Car brand: $brand, Year: $year");
  }
}

void main() {
  Car car1 = Car("Toyota", 2020);
  Car car2 = Car("BMW", 2022);

  car1.showDetails();
  car2.showDetails();
}
