/*
Exercise 2:
2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one.
*/
void main() {
  //a)

  String country = 'Egypt';
  int year = 2025;
  double weight = 100.25;
  bool likesCoding = true;
  //b)
  print(
    "I live in $country , the year now is $year ,my weight was $weight , and I really $likesCoding like coding",
  );

  //c)
  weight = 110.00;
  print('Updated weight is $weight');
}
