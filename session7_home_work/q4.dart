/*

 Q4. Simple List Analyzer 
 - Let the user enter 5 numbers into a list. 
 - Print the largest and smallest numbers, and then calculate the difference between them.    
*/

import 'dart:io';

void main() {
  List<int> numbers = [];

  print('enter five numbers:');
  for (int i = 0; i < 5; i++) {
    stdout.write('number ${i + 1}: ');
    int input = int.parse(stdin.readLineSync()!);
    numbers.add(input);
  }

  int smallest = numbers[0];
  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  int difference = largest - smallest;

  print('\n resulte');
  print('smallest: $smallest');
  print('largest: $largest');
  print('difference: $difference');
}
