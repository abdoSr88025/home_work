/*
Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).

*/
class Vehicle {
  double _fuelCapacity = 50;
  double _fuelEfficiency = 10;

  Vehicle(double fuelCapacity, double fuelEfficiency) {
    this.fuelCapacity = fuelCapacity;
    this.fuelEfficiency = fuelEfficiency;
  }

  double get fuelCapacity => _fuelCapacity;
  set fuelCapacity(double value) {
    if (value > 0) {
      _fuelCapacity = value;
    } else {
      print(" fuelCapacity must be > 0 (kept previous: $_fuelCapacity)");
    }
  }

  double get fuelEfficiency => _fuelEfficiency;
  set fuelEfficiency(double value) {
    if (value > 0) {
      _fuelEfficiency = value;
    } else {
      print(" fuelEfficiency must be > 0 (kept previous: $_fuelEfficiency)");
    }
  }

  // ---- methods ----
  double computeFuelNeeded(double distance) {
    return distance / _fuelEfficiency;
  }

  bool canCompleteTrip(List<double> distances) {
    double total = 0;
    for (var d in distances) {
      total += computeFuelNeeded(d);
    }
    return total <= _fuelCapacity;
  }

  @override
  String toString() =>
      "Vehicle(capacity: $_fuelCapacity L, efficiency: $_fuelEfficiency km/L)";
}

// ---------------- Car ----------------
class Car extends Vehicle {
  int _passengerCount = 1;

  Car(double fuelCapacity, double fuelEfficiency, int passengerCount)
    : super(fuelCapacity, fuelEfficiency) {
    this.passengerCount = passengerCount;
  }

  int get passengerCount => _passengerCount;
  set passengerCount(int value) {
    if (value >= 1) {
      _passengerCount = value;
    } else {
      print("❌ passengerCount must be >= 1 (kept previous: $_passengerCount)");
    }
  }

  @override
  double computeFuelNeeded(double distance) {
    double multiplier = 1 + (_passengerCount - 1) * 0.02;
    return (distance / fuelEfficiency) * multiplier;
  }

  @override
  String toString() =>
      "Car(capacity: $fuelCapacity L, eff: $fuelEfficiency km/L, passengers: $_passengerCount)";
}

class Truck extends Vehicle {
  double _cargoWeight = 0;

  Truck(double fuelCapacity, double fuelEfficiency, double cargoWeight)
    : super(fuelCapacity, fuelEfficiency) {
    this.cargoWeight = cargoWeight;
  }

  double get cargoWeight => _cargoWeight;
  set cargoWeight(double value) {
    if (value >= 0) {
      _cargoWeight = value;
    } else {
      print(" cargoWeight must be >= 0 (kept previous: $_cargoWeight)");
    }
  }

  @override
  double computeFuelNeeded(double distance) {
    double effectiveEff = fuelEfficiency * (1 - 0.05 * _cargoWeight);
    if (effectiveEff <= 0) effectiveEff = 1;
    return distance / effectiveEff;
  }

  @override
  String toString() =>
      "Truck(capacity: $fuelCapacity L, eff: $fuelEfficiency km/L, cargo: $_cargoWeight tons)";
}

void main() {
  var vehicles = [
    Car(60, 15, 4),
    Car(40, 12, 0),
    Truck(150, 8, 5),
    Truck(200, -10, 0),
  ];

  var trip = [100.0, 200.0, 50.0];

  for (var v in vehicles) {
    double total = 0;
    for (var d in trip) {
      total += v.computeFuelNeeded(d);
    }
    print("\n$v");
    print("Total fuel needed: ${total.toStringAsFixed(2)} L");
    print(
      v.canCompleteTrip(trip)
          ? " Can complete the trip"
          : " Cannot complete the trip",
    );
  }
}
