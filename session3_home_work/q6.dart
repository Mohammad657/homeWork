/*

Exercise 6:
6. a) Create List animals with three values.
b) Add a new animal, remove the last one, and update the second element.
c) Print animals.first, animals.last, and animals.length.

*/


void main() {
  List<String> animals = ['Dog', 'Cat', 'Bird'];
  animals.add('Fish');
  animals.removeLast();
  animals[1] = 'Rabbit';
  print('First animal: ${animals.first}');
  print('Last animal: ${animals.last}');
  print('Number of animals: ${animals.length}');
}