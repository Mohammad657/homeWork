/*

Exercise 7:
7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result.

*/


void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  Set<int> uniqueNumbers = numbers.toSet();
  print('Unique numbers: $uniqueNumbers');
  uniqueNumbers.add(8);
  print('After adding 8: $uniqueNumbers');
  uniqueNumbers.remove(4);
  print('After removing 4: $uniqueNumbers');
  print('Does the set contain 5? ${uniqueNumbers.contains(5)}');
}
