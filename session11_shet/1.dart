/*
 Design an OOP model for planning trip fuel across multiple vehicle types.
 Requirements:
 - Provide a general vehicle type with encapsulated core data (private fields) and validated constructors (invalid → print an error; keep previous values).
 - Create at least two specialized vehicle types that inherit from the general type and introduce one private field each affecting fuel usage, with validation.
 - Define a fuel computation method in the general type; specialized types must override it with their own rule.
 - In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print which vehicles cannot complete the route under their own constraints (you define the constraint per type).
 */

void main() {
  List<Vehicle> vehicle = [
    Car(
      name: "Toyota",
      fuelCapacity: 10,
      fuelEfficiency: 15,
      airConditioning: true,
    ),
    Truck(
      name: "Volvo",
      fuelCapacity: 200,
      fuelEfficiency: 5,
      cargoWeight: 800,
    ),
  ];

  List<double> trip = [120, 200, 50];

  for (var v in vehicle) {
    double totalDistance = trip.reduce((a, b) => a + b);
    double range = v.computeRange();

    print("${v.name}");
    print("Range= $range km");
    print("total distance = $totalDistance km");

    if (range >= totalDistance) {
      print("can complete trip");
    } else {
      print("cannot complete trip");
    }
  }
}

class Vehicle {
  String _name;
  double _fuelCapacity;
  double _fuelEfficiency;

  Vehicle({
    required String name,
    required double fuelCapacity,
    required double fuelEfficiency,
  }) : _name = name,
       _fuelCapacity = fuelCapacity > 0 ? fuelCapacity : 0,
       _fuelEfficiency = fuelEfficiency > 0 ? fuelEfficiency : 0;

  String get name => _name;
  double get fuelCapacity => _fuelCapacity;
  double get fuelEfficiency => _fuelEfficiency;

  set fuelCapacity(double value) {
    if (value > 0) {
      _fuelCapacity = value;
    } else {
      print("Fuel capacity must be > 0");
    }
  }

  set fuelEfficiency(double value) {
    if (value > 0) {
      _fuelEfficiency = value;
    } else {
      print("Fuel efficiency must be > 0");
    }
  }

  double computeRange() {
    return _fuelCapacity * _fuelEfficiency;
  }
}

class Car extends Vehicle {
  bool _airConditioning;

  Car({
    required String name,
    required double fuelCapacity,
    required double fuelEfficiency,
    bool airConditioning = false,
  }) : _airConditioning = airConditioning,
       super(
         name: name,
         fuelCapacity: fuelCapacity,
         fuelEfficiency: fuelEfficiency,
       );

  bool get airConditioning => _airConditioning;

  set airConditioning(bool value) {
    _airConditioning = value;
  }

  @override
  double computeRange() {
    double efficiency = airConditioning ? fuelEfficiency * 0.9 : fuelEfficiency;
    return fuelCapacity * efficiency;
  }
}

class Truck extends Vehicle {
  double _cargoWeight;

  Truck({
    required String name,
    required double fuelCapacity,
    required double fuelEfficiency,
    double cargoWeight = 0,
  }) : _cargoWeight = cargoWeight,
       super(
         name: name,
         fuelCapacity: fuelCapacity,
         fuelEfficiency: fuelEfficiency,
       );

  double get cargoWeight => _cargoWeight;

  set cargoWeight(double value) {
    if (value >= 0) {
      _cargoWeight = value;
    } else {
      print("cargo weight must be >= 0");
    }
  }

  @override
  double computeRange() {
    double penalty = (cargoWeight / 100) * 0.02;
    double efficiency = fuelEfficiency * (1 - penalty);

    if (efficiency < 0) efficiency = 0;
    return fuelCapacity * efficiency;
  }
}
