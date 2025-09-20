/*
 Create a class Car with private fields _brand and _year.
 - Add setters that reject empty brand names and years less than 1886 (first car invention).
 - Add getters for both.
 - In main(), demonstrate creating two car objects (one valid, one invalid input).
*/

void main() {
  Car car1 = Car('Toyota', 2020);
  print('Car 1: ${car1.brand}, Year: ${car1.year}');

  Car car2 = Car('', 1800); 
  print('Car 2: ${car2.brand}, Year: ${car2.year}');
}

class Car {
  String _brand;
  int _year;

  Car(this._brand, this._year);

  String get brand => _brand;
  int get year => _year;

  set brand(String value) {
    if (value.isNotEmpty) {
      _brand = value;
    } else {
      print('Invalid brand name');
    }
  }

  set year(int value) {
    if (value >= 1886) {
      _year = value;
    } else {
      print('Invalid year');
    }
  }
}