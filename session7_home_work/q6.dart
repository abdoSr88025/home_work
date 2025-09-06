/*
Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
 guess up to 3 times. If they fail, reveal the correct number
*/
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int secretNumber = random.nextInt(20) + 1;

  print("Choose number between 1 and 20.");
  bool guessedNumber = false;

  for (int i = 1; i <= 3; i++) {
    print("Enter your guess: ");
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == secretNumber) {
      print("You guessed the number.");
      guessedNumber = true;
      break;
    } else if (guess < secretNumber) {
      print("Too low!");
    } else {
      print("Too high!");
    }
  }

  if (!guessedNumber) {
    print(" You failed. The number was $secretNumber");
  }
}
