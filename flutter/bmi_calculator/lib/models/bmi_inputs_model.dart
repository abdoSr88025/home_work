import 'dart:math';

class BmiInputsModel {
  String gender;
  double height;
  int weight;
  int age;
  BmiInputsModel({
    this.gender = 'Male',
    this.height = 170,
    this.weight = 80,
    this.age = 25,
  });
  double calculateBmi() {
    return weight / pow(height / 100, 2);
  }
}
