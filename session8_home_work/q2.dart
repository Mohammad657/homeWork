/*
 Q2. Class with Constructor 
 - Create a class Car with attributes brand and year. 
 - Add a constructor to set the values when creating the object. 
 - In main(), create two car objects with different data and print their details.
*/


void main() {
  Car car1 = Car("Toyota", "2020");
  Car car2 = Car("Honda", "2021");

  print("Car 1: ${car1.brand}, Year: ${car1.year}");
  print("Car 2: ${car2.brand}, Year: ${car2.year}");
}


class Car{
  String  brand;
  String  year;

  Car(this.brand, this.year);
}