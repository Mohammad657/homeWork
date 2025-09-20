/*
 Ask the user to input a list of integers.
 - Print the largest number, the smallest number, and their difference.
 - Calculate the average of the list.
 - Print all numbers that are above the average.
 - Finally, print how many numbers are even and how many are odd in the list
*/


import 'dart:io';
import 'dart:math';
void main() {
  stdout.write('Enter a list of integers separated by spaces: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    List<int> numbers = input.split(' ').map(int.parse).toList();

    int largest = numbers.reduce(max);
    int smallest = numbers.reduce(min);
    int difference = largest - smallest;
    double average = numbers.reduce((a, b) => a + b) / numbers.length;
    List<int> aboveAverage = numbers.where((num) => num > average).toList();
    int evenCount = numbers.where((num) => num % 2 == 0).length;
    int oddCount = numbers.length - evenCount;

    print('Largest number: $largest');
    print('Smallest number: $smallest');
    print('Difference: $difference');
    print('Average: ${average.toStringAsFixed(2)}');
    print('Numbers above average: ${aboveAverage.join(', ')}');
    print('Even numbers count: $evenCount');
    print('Odd numbers count: $oddCount');
  } else {
    print('No input provided.');
  }
}