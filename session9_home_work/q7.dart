/*
Q7. Sentence Word Counter 
- Ask the user for a short sentence. 
- Print how many words it contains and how many characters (excluding spaces).
*/

import 'dart:io';

void main() {
  stdout.write("enter a short sentence: ");
  String sentence = stdin.readLineSync()!;
  int wordCount = sentence.trim().split(" ").length;
  int charCount = sentence.trim().replaceAll(" ", "").length;
  print("word count: $wordCount");
  print("character count: $charCount");
}
