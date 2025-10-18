/*
Model shapes to compute total paintable area and cost.
 Requirements:
 - Provide a general shape type (concrete class) with an area() method that can be overridden.
 - Implement at least three concrete shape types with encapsulated dimensions and validated constructors (invalid → print; keep previous).
 - Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client code).
 - Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total cost to 2 decimals

*/

import 'dart:math';


void main() {
  List<Shape> shapes = [
    Rectangle(width: 10, height: 5),
    Circle(radius: 7),
    Triangle(base: 8, height: 6),
    Rectangle(width: -3, height: 4),
  ];

  double totalArea = 0;
  for (var s in shapes) totalArea += s.area();

  double totalCost = calculateCost(totalArea);

  print("Total area: ${totalArea.toStringAsFixed(2)}");
  print("Total cost: \$${totalCost.toStringAsFixed(2)}");
}



abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double _width;
  double _height;

  Rectangle({required double width, required double height})
      : _width = width > 0 ? width : 1,
        _height = height > 0 ? height : 1 {
    if (width <= 0 || height <= 0) {
      print("Bad rectangle numbers, use 1.");
    }
  }

  @override
  double area() => _width * _height;
}

class Circle extends Shape {
  double _radius;

  Circle({required double radius})
      : _radius = radius > 0 ? radius : 1 {
    if (radius <= 0) print("Bad circle number, use 1.");
  }

  @override
  double area() => pi * _radius * _radius;
}

class Triangle extends Shape {
  double _base;
  double _height;

  Triangle({required double base, required double height})
      : _base = base > 0 ? base : 1,
        _height = height > 0 ? height : 1 {
    if (base <= 0 || height <= 0) print("Bad triangle numbers, use 1.");
  }

  @override
  double area() => 0.5 * _base * _height;
}

double calculateCost(double totalArea) {
  if (totalArea <= 50) return totalArea * 1.50;
  if (totalArea <= 150) return 50 * 1.50 + (totalArea - 50) * 1.25;
  return 50 * 1.50 + 100 * 1.25 + (totalArea - 150) * 1.00;
}

