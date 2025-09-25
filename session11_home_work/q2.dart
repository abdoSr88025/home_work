/*
Q2
Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.
*/
import 'dart:math';

class Shape {
  double area() {
    return 0.0;
  }
}

class Rectangle extends Shape {
  double _width;
  double _height;

  Rectangle(this._width, this._height) {
    if (_width <= 0 || _height <= 0) {
      print("Error: invalid rectangle dimensions!");
      _width = 1;
      _height = 1;
    }
  }

  double get width => _width;
  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print("Error: width must be > 0");
    }
  }

  double get height => _height;
  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print("Error: height must be > 0");
    }
  }

  @override
  double area() => _width * _height;
}

class Circle extends Shape {
  double _radius;

  Circle(this._radius) {
    if (_radius <= 0) {
      print("Error: invalid radius!");
      _radius = 1;
    }
  }

  double get radius => _radius;
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print("Error: radius must be > 0");
    }
  }

  @override
  double area() => pi * _radius * _radius;
}

class Triangle extends Shape {
  double _base;
  double _height;

  Triangle(this._base, this._height) {
    if (_base <= 0 || _height <= 0) {
      print("Error: invalid triangle dimensions!");
      _base = 1;
      _height = 1;
    }
  }

  double get base => _base;
  set base(double value) {
    if (value > 0) {
      _base = value;
    } else {
      print("Error: base must be > 0");
    }
  }

  double get height => _height;
  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print("Error: height must be > 0");
    }
  }

  @override
  double area() => 0.5 * _base * _height;
}

double computeCost(double totalArea) {
  double cost = 0.0;
  double remaining = totalArea;

  if (remaining > 0) {
    double tier = min(remaining, 50);
    cost += tier * 1.50;
    remaining -= tier;
  }

  if (remaining > 0) {
    double tier = min(remaining, 100);
    cost += tier * 1.25;
    remaining -= tier;
  }

  if (remaining > 0) {
    cost += remaining * 1.00;
  }

  return cost;
}

void main() {
  List<Shape> shapes = [
    Rectangle(10, 5),
    Circle(4),
    Triangle(6, 8),
    Rectangle(-2, 5), // هيتطبع Error ويتم التعديل
  ];

  double totalArea = 0.0;
  for (var shape in shapes) {
    totalArea += shape.area(); // Polymorphism هنا 👌
  }

  double totalCost = computeCost(totalArea);

  print("Total Paintable Area: ${totalArea.toStringAsFixed(2)}");
  print("Total Painting Cost: \$${totalCost.toStringAsFixed(2)}");
}
