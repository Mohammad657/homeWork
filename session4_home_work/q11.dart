/*
Question 19
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.
*/

  


void main() {
  List<String> names = ['Mohammad', 'ALi', 'Mohammad', 'ALi', 'Jafar'];

  Set<String> uniqueNames = names.toSet();

  int mohammadCount = names.where((name) => name == 'Mohammad').length;
  int aliCount = names.where((name) => name == 'ALi').length;
  int jafarCount = names.where((name) => name == 'Jafar').length;

  print("Unique Names: $uniqueNames");
  print("Mohammad Count: $mohammadCount");
  print("ALi Count: $aliCount");
  print("Jafar Count: $jafarCount");

  if (mohammadCount > 1) {
    print("Mohammad appears more than once.");
  }
  if (aliCount > 1) {
    print("ALi appears more than once.");
  }
  if (jafarCount > 1) {
    print("Jafar appears more than once.");
  }
}
