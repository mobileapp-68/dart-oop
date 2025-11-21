void main() {
  var student1 = Student(gpa: 4.0);
  print(student1.gpa);
  Student student2 = Student(gpa: 3.0);
  student2.gpa = 3.5;
  print(student1.gpa);
  print(student2.gpa);
}

class Student {
  double? gpa;
  // Student({required double gpa, String? name}) {
  //   this._gpa = gpa;
  // }
  Student({this.gpa});
}
