/*
Exercise 5:
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
 */

void main() {
  int mark = 78;
  String grade;

  if (mark >= 85) {
    grade = 'A';
  } else if (mark >= 70) {
    grade = 'B';
  } else if (mark >= 50) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  switch (grade) {
    case 'A':
      print("Excellent ");
      break;
    case 'B':
      print("Very good ");
      break;
    case 'C':
      print("Good ");
      break;
    case 'D':
      print("Poor");
      break;
    default:
      print("Invalid grade.");
  }
}
