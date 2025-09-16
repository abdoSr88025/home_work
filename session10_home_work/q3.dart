/*
  Q3
 Create a class Grade with a private field _score.
 - The setter should only accept values 0–100, otherwise print 'Invalid score'.
 - Add a getter and a computed getter isPass that returns true if score ≥ 50.
 - In main(), demonstrate updating the score multiple times and printing results.
*/
class Grade {
  int? _score;
  set score(int value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print('Invalid score');
    }
  }

  int get score => _score!;
  bool get isPass => _score! >= 50;
}

void main() {
  Grade grade = Grade();
  grade.score = 40;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
  grade.score = -1;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
  grade.score = 80;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
}
