import '../models/question.dart';

final List<Question> sampleQuestions = [
  Question(
    id: 'q1',
    text: 'What is the capital of France?',
    options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
    correctIndex: 2,
  ),
  Question(
    id: 'q2',
    text: 'Which planet is known as the Red Planet?',
    options: ['Earth', 'Mars', 'Jupiter', 'Venus'],
    correctIndex: 1,
  ),
  Question(
    id: 'q3',
    text: '2 + 2 = ?',
    options: ['3', '4', '5', '6'],
    correctIndex: 1,
  ),
];