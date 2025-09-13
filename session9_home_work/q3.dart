/*
Q3. Word Reversal & Vowel Count 
- Take a word from the user. 
- Print the word reversed, and also count how many vowels it has.
*/

import 'dart:io';

void main() {
  stdout.write("enter a word: ");
  String word = stdin.readLineSync()!;
  print(word.split('').reversed.join());
  print(
    word
        .split('')
        .where(
          (char) =>
              char == 'a' ||
              char == 'e' ||
              char == 'i' ||
              char == 'o' ||
              char == 'u',
        )
        .length,
  );
}
