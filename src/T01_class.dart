void main() {
  StudentA s1 = StudentA();
  print(s1.gpa);

  StudentB s2 = StudentB();
  // print(s2._gpa);
  print(s2.gpa);
  s2.gpa = 3.8;
  print(s2.gpa);

  var s3 = StudentC("John", gpa: 4.0);
  print("${s3.name}'s GPA is ${s3.gpa}");
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
}

class StudentC {
  double gpa;
  String? name;

  // Student({required double gpa, String? name}) {
  //   this._gpa = gpa;
  // }
  StudentC(this.name, {required this.gpa});
}
