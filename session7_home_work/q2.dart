/*
Q2. Odd Numbers in a Range 
- Ask the user to input a number n. 
- Print all odd numbers between 1 and n, and also print how many odd numbers were found.
*/

import 'dart:io';

void main() {
  int nNumber = addNNumber();
  int count = 0;
  for (int i = 1; i <= nNumber; i++) {
    if (i % 2 == 1) {
      print(i);
      count++;
    }
  }
  print("the count odd number: "+count.toString());
}

int addNNumber() {
  int NNumber;
  stdout.write("input first number: ");
  NNumber = int.parse(stdin.readLineSync() ?? "0");
  return NNumber;
}
