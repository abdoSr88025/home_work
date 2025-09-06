/*
 Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
 count how many vowels it has
*/
import 'dart:io';

void main() {
  print('Enter a word: ');
  String word = stdin.readLineSync()!;

  String reversed = word.split('').reversed.join('');

  int vowelCount = 0;
  String vowels = "aeiouAEIOU";
  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      vowelCount++;
    }
  }

  print('Reversed word: $reversed');
  print('Number of vowels: $vowelCount');
}
