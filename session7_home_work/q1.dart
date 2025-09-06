/*
 Q1. Sum, Average & Compare 
 - Ask the user for three numbers. 
 - Print their sum and average. Then, check if the average is greater than 50 or not.
*/

import 'dart:io';

void main() {
  int firstNumber;
  int secondNumber;
  int thirdNumber;
  stdout.write("input first number: ");
  firstNumber = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("input second number: ");
  secondNumber = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("input third number: ");
  thirdNumber = int.parse(stdin.readLineSync() ?? "0");

  int sum = firstNumber + secondNumber + thirdNumber;
  print(sum);
  double average = sum / 3;
  print(average);
  if (average > 50) {
    print("the average is greater than 50");
  } else {
    print("not the average is greater than 50");
  }
}
