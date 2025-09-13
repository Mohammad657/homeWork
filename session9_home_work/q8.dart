/*
Q8. Digits Operations
- Ask the user for a number (e.g., 528). 
- Print the sum of its digits and also print the largest digit.
*/

import 'dart:io';

void main() {
  stdout.write("enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int largestDigit = 0;
  while (number > 0) {
    int digit = number % 10;
    sum += digit;
    if (digit > largestDigit) {
      largestDigit = digit; 
    }
    number ~/= 10;
  }
  print("sum of digits: $sum");
  print("largest digit: $largestDigit");
}