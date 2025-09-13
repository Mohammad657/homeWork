/*
Q2. Odd Numbers in a Range 
- Ask the user to input a number n. 
- Print all odd numbers between 1and n, and also print how many odd numbers were found.
*/


import 'dart:io';

void main() {
  int count = 0;
  stdout.write("enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    if (i % 2 == 1) {
      print(i);
      count++;
    }
  }
  print("how many odd numbers were found: $count");
}