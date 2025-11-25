void main() {
  Person person = Person();
  person.sayHello(); // Output: Hello from Person
  person.eat(); // Output: Person is eating
  print(person.age);

  Student student = Student();
  student.sayHello(); // Output: Hello from Student
  student.eat(); // Output: Person is eating
  student.study(); // Output: Student is studying
  student.printAge();

  Teacher teacher = Teacher();
  teacher.sayHello(); // Output: Hello from Teacher
  teacher.eat(); // Output: Teacher is eating
  print(teacher.age);

  // Can't instantiate mixin directly
  // Athlete athlete = Athlete();

  FootballPlayer player = FootballPlayer(age: 25);
  player.sayHello(); // Output: Hello from Football Player
  player.eat(); // Output: Person is eating
  player.run(); // Output: Running
  player.kick(); // Output: Kicking the ball
  print(player.age);

  Dog dog = Dog();
  dog.makeSound(); // Output: Bark
}

class Person {
  double age;
  Person({this.age = 0});

  void sayHello() {
    print('Hello from Person');
  }

  void eat() {
    print('Person is eating');
  }
}

class Student extends Person {
  double? gpa;

  // Without super constructor call, the age in Person will be default (0)
  // Student({this.gpa = 0, double age = 10});

  // With super constructor call to initialize age in Person
  // Student({double gpa = 0, double age = 10}) : super(age: age) {
  //   this.gpa = gpa;
  // }

  // Shorthand for above constructor
  Student({this.gpa = 0, double age = 10}) : super(age: age);

  @override
  void sayHello() {
    print('Hello from Student');
  }

  void study() {
    print('Student is studying');
  }

  void printAge() {
    print('Child Class Age: $age. Super Class Age: ${super.age}');
  }
}

class Teacher implements Person {
  @override
  double age = 30;
  double salary;

  // No super call needed since Teacher does not extend Person.
  Teacher({this.salary = 0, double this.age = 30});

  // Using super here will cause an error
  // Teacher({this.salary = 0, double age = 30}) : super(age: age);

  @override
  void eat() {
    print('Teacher is eating');
  }

  @override
  void sayHello() {
    print('Hello from Teacher');
  }
}

// Using with mixin
mixin Athlete on Person {
  void run() {
    print('Running');
  }
}

mixin Football on Person {
  void kick() {
    print('Kicking the ball');
  }
}

class FootballPlayer extends Person with Athlete, Football {
  FootballPlayer({double age = 20}) : super(age: age);

  @override
  void sayHello() {
    print('Hello from Football Player');
  }
}

// Abstract class example
abstract class Animal {
  // Abstract method
  void makeSound();

  // Concrete method
  void sleep() {
    print('Animal is sleeping');
  }
}

class Dog extends Animal {
  // Need to implement the abstract method
  @override
  void makeSound() {
    print('Bark');
  }
}
