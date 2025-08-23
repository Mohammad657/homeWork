/*
Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
*/
    
void main() {
  List<String> items = ['apple', 'banana', 'apple', 'orange', 'banana'];
  Set<String> uniqueItems = items.toSet();

  if (uniqueItems.length < items.length) {
    print("Duplicates were removed.");
  } else {
    print("No duplicates found.");
  }

  print("Original list length: ${items.length}");
  print("Unique list length: ${uniqueItems.length}");
}
