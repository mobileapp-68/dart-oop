void main() {
  var s1 = StudentA();
  print(s1.gpa);

  var s2 = StudentB();
  // print(s2._gpa);  // This is allowed only within the same library.
  print(s2.gpa);
  s2.gpa = 3.8;
  print(s2.gpa);

  var s3 = StudentC(gpa: 4.0);
  print(s3.gpa);

  var s4 = StudentD(gpa: 3.5);
  print(s4.gpa);

  var s5 = StudentE(gpa: 3.9, name: "Alice");
  print(s5.gpa);
  print(s5.name);

  var s6 = StudentF(gpa: 4.0);
  print(s6.gpa);
  // This will cause an error because gpa is final.
  // s6.gpa = 3.5;

  var s7 = StudentG(gpa: 3.7);
  print(s7.gpa);
  var s8 = StudentG.positional(3.9);
  print(s8.gpa);
}

class StudentA {
  double gpa = 2.5;
}

class StudentB {
  // Library private variable
  double _gpa = 2.5;

  // Getter
  // double get gpa {
  //   return _gpa;
  // }
  double get gpa => _gpa;

  // Setter
  // set gpa(double _gpa) {
  // this._gpa = value;
  // }
  set gpa(double gpa) => _gpa = gpa;

  // You can also define regular methods
  // void setGpa(double gpa) {
  //   _gpa = gpa;
  // }
}

class StudentC {
  // Need nullable type to allow uninitialized variable
  double? gpa;

  StudentC({required double gpa}) {
    this.gpa = gpa;
  }
}

class StudentD {
  // Non-nullable variable with constructor parameter
  double gpa;

  StudentD({required this.gpa});
}

class StudentE {
  double gpa;
  String name;

  StudentE({required this.gpa, this.name = ""});
}

class StudentF {
  // Final variable, must be initialized and cannot be changed later.
  final double gpa;

  StudentF({required this.gpa});
}

class StudentG {
  // Final variable, must be initialized and cannot be changed later.
  final double gpa;

  StudentG({required this.gpa});
  // Named constructor with positional parameter
  StudentG.positional(this.gpa);
}
