// Polymorphic behavior in Dart is the ability of objects from different classes to be
// treated as objects of a common superclass, primarily achieved through method overriding.
void main() {
  Shape circle = Circle(5);
  print('Area of Circle: ${circle.area()}'); // Output: Area of Circle: 78.5

  Shape rectangle = Rectangle(4, 6);
  print(
    'Area of Rectangle: ${rectangle.area()}',
  ); // Output: Area of Rectangle: 24

  // Polymorphic behavior
  List<Shape> shapes = [Circle(3), Rectangle(2, 5), Circle(7)];
  for (var shape in shapes) {
    print('Shape area: ${shape.area()}');
  }

  // Database example
  // String dbType = 'MySQL';
  String dbType = 'MongoDB';
  Database db = dbType == 'MySQL' ? MySQLDatabase() : MongoDBDatabase();
  db.connect();
  db.getData();
}

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

abstract class Database {
  void connect() {
    print('Connecting to database');
  }

  void getData();
}

class MySQLDatabase extends Database {
  @override
  void connect() {
    print('Connecting to MySQL database');
  }

  @override
  void getData() {
    print('Getting data from MySQL database');
  }
}

class MongoDBDatabase extends Database {
  @override
  void connect() {
    print('Connecting to MongoDB database');
  }

  @override
  void getData() {
    print('Getting data from MongoDB database');
  }
}
