import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;
  bool result = isPalindrome(input);
  print("Is palindrome? $result");
}


bool isPalindrome(String s) {
  s = s.toLowerCase();
  s = s.replaceAll(RegExp(r'[^a-z0-9]'), '');
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}