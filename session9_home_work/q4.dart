/*
Q4. Simple List Analyzer 
- Let the user enter 5 numbers into a list. 
- Print the largest and smallest numbers, and then calculate the difference between them.
*/

import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("enter number ${i + 1}: ");
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  int largest = numbers[0];
  int smallest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
  }
  print("largest number: $largest");
  print("smallest number: $smallest");
  print("difference between largest and smallest number: ${largest - smallest}");
}   