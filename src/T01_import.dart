import 'T01_class.dart';

void main() {
  StudentA s1 = StudentA();
  print(s1.gpa);

  // This will cause an error because _gpa is private to T01_class.dart
  // StudentB s2 = StudentB();
  // print(s2._gpa);
}
