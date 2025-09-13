/*
Q1. Sum, Average & Compare 
- Ask the user for three numbers. 
- Print their sum and average.Then, check if the average is greater than 50 or not.
*/
import 'dart:io';

void main() {
  double sum = 0;

  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter number $i: ");
    double num = double.parse(stdin.readLineSync()!);
    sum += num;
  }

  double average = sum / 3;

  print("Sum = $sum");
  print("Average = $average");

  if (average > 50) {
    print("The average is greater than 50.");
  } else {
    print("The average is not greater than 50.");
  }
}
