/*
Q3. Modify Attributes 
- Create a class Person with attributes name and age. 
- Create an object and set its initial values using a constructor. 
- Then change the age of the object and print the updated details.
*/


void main() {
  Person p1 = Person("Ali", 20);
  p1.showDetails();
  p1.age = 25;
  p1.showDetails();
}



class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void showDetails() {
    print("Name: $name, Age: $age");
  }
}
