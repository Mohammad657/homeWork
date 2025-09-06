/*
Multiplication Table with Sum 
- Ask the user for a number. 
- Print its multiplication table up to 10, then calculate the sum of all results. in dart
*/

import 'dart:io';

void main() {
  int number;
  int sum = 0;

  stdout.write("Enter a number:");
  number = int.parse(stdin.readLineSync()!);

  print("$number's multiplication table:");
  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print("$number x $i = $result");
    sum += result;
  }

  print("Sum of all results: $sum");
} 
  
