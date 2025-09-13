/*
 Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
 print the total count of unique words
*/
import 'dart:io';

void main() {
  stdout.write("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.split(" ");

  Map<String, int> wordCount = {};

  for (var word in words) {
    word = word.toLowerCase();
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  List<String> uniqueWords =
      wordCount.keys.where((word) => wordCount[word] == 1).toList();

  print("Unique words: $uniqueWords");
  print("Total unique words: ${uniqueWords.length}");
}
