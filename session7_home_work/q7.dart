/*
Sentence Word Counter 
- Ask the user for a short sentence. 
- Print how many words it contains and how many characters (excluding spaces).
*/

import 'dart:io';

void main(){
stdout.write("enter a short sentence: ");
String sentence = stdin.readLineSync()!;

List<String> words = sentence.split(" ");
int wordCount = words.length;
int characterCount = sentence.length - (wordCount - 1);

print("word count: $wordCount");
print("character count: $characterCount");
}