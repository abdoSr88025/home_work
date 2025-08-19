/*
Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double
 */
void main() {
  //a)
  List<Map<String, dynamic>> students = [
    {'name': 'Ahmed', 'grade': 77},
    {'name': 'Ali', 'grade': 65},
  ];
  //b)
  print(students[1]['grade']);
  //c)
  int totalGrades = students[0]['grade'] + students[1]['grade'];
  double average = totalGrades / 2;
  print('average = $average');
}
