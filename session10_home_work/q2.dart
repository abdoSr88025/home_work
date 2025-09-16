/*
  Q2
 Create a class Car with private fields _brand and _year.
 - Add setters that reject empty brand names and years less than 1886 (first car invention).
 - Add getters for both.
 - In main(), demonstrate creating two car objects (one valid, one invalid input).
*/
class Car {
  String? _brand;
  int? _year;
  set brand(String value) {
    if (value.isEmpty) {
      print('Empty barnd');
    } else {
      _brand = value;
    }
  }

  String get brand => _brand!;
  set year(int value) {
    if (value < 1886) {
      print('Rejected !! first car invention');
    } else {
      _year = value;
    }
  }

  int get year => _year!;
}

void main() {
  Car c1 = Car();
  Car c2 = Car();
  c1.brand = 'Toyota';
  c1.year = 1850;
  c2.brand = 'BMW';
  c2.year = 2000;
}
