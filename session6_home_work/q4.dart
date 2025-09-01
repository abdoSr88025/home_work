/*
Q4
 Create a program with a map of student names to their marks. Print the name of the student with
 the highest mark

*/
void main() {
  Map<String, dynamic> studentsMarks = {
    'Ahmed': 65,
    'Ali': 77,
    'Mona': 70,
    'Samy': 66,
  };
  String studentWithHighestMark = '';
  int highestMark = 0;
  studentsMarks.forEach((name, mark) {
    if (mark > highestMark) {
      highestMark = mark;
      studentWithHighestMark = name;
    }
  });
  print(
    'The name of heighest mark is $studentWithHighestMark and mark is $highestMark',
  );
}
