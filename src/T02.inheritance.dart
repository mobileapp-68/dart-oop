void main() {
  Person person = Person();
  person.sayHello(); // Output: Hello from Person
  person.eat(); // Output: Person is eating
  print(person.age);

  Student student = Student();
  student.sayHello(); // Output: Hello from Student
  student.eat(); // Output: Person is eating
  student.study(); // Output: Student is studying
  print(student.age);

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
  void sayHello() {
    print('Hello from Person');
  }

  void eat() {
    print('Person is eating');
  }

  Person({this.age = 0});
}

class Student extends Person {
  double? gpa;

  @override
  void sayHello() {
    print('Hello from Student');
  }

  void study() {
    print('Student is studying');
  }

  // Student({double gpa = 0, double age = 10}) : super(age: age) {
  //   this.gpa = gpa;
  // }
  Student({this.gpa = 0, double age = 10}) : super(age: age);
}

class Teacher implements Person {
  @override
  double age = 30;
  double salary;

  Teacher({this.salary = 0, double this.age = 30});

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
  @override
  void sayHello() {
    print('Hello from Football Player');
  }

  FootballPlayer({double age = 20}) : super(age: age);
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
