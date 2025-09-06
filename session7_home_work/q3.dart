/*
 Q3. Word Reversal & Vowel Count 
 - Take a word from the user. 
 - Print the word reversed, and also count how many vowels it has.
*/

import 'dart:io';

void main() {
  String wordString = addString();
  List<String> wordList = [];
  int count = 0;
  wordList = wordString.split("");

  print(wordList.reversed.join());
  for (int i = 0; i < wordList.length; i++) {
    if (wordList[i] == "a" ||
        wordList[i] == "e" ||
        wordList[i] == "i" ||
        wordList[i] == "o" ||
        wordList[i] == "u") {
      count++;
    }
  }
  print(count);
}

String addString() {
  String StringName;
  stdout.write("input Word String: ");
  StringName = stdin.readLineSync() ?? "";
  return StringName;
}
