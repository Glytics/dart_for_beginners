//1 chapter

// void main() {
//   print("Hello, World");
// }

// void main() {
//   print("Hi");
//   print("From Dart!");
// }

// void main() {
//   var x = -10;

//   print(x.abs());
// }

// void main() {
// Numbers - (int, double) num
// Strings - "Hello!" (single and double quotes)
// Booleans - true or false
// Lists - collections of items (like arrays) List<int> 0 indexed
// Maps - Collections with associated Key Value Pairs Map<String, int>
// runes - unicode character points
// symbols - #symbol (simbolic metadata)

//   int x = 10;
//   double y = 10.0;

//   String s = "${x + y}";
//   print(s);
//   bool b = true;
//   print(b);
//   List l = [1, 2, 3];
//   print(l[0]);
//   List<String> ls = ["1", "2", "3"];
//   print(ls[1]);

//   Map<String, int> map = {
//     'A': 10,
//     'B': 20,
//     'C': 30,
//   };

//   print(map["A"]);
// }

// int add(int a, int b) {
//   return a + b;
// }
// Type based function
// add(a, b) {
//   return a + b;
// }
// No types

// void main() {
//   print(add(1, 2));
//   print(add(20.0, 40.0));
//   print(add("a", "b"));
//   print(add(true, false));
// }

// int add(int a, int b) {
//   return a + b;
// }

// Function fun;

// void main() {
//   fun = add;

//   var result = fun(20, 30);

//   print("Result is $result");
// }

// int add(int a, int b) {
//   return a + b;
// }

// exec(Function op, x, y) {
//   return op(x, y);
// }

// void main() {
//   var result = exec(add, 20, 30);
//   print("Result is $result");
// }

// int add(int x, int y) => x + y;
// int sub(int x, int y) => x + y;

// choose(bool op) {
//   if (op == true) {
//     return add;
//   } else {
//     return sub;
//   }
// }

// void main() {
//   var result = choose(true)(10, 20);
//   print("Result is $result");
// }

// int add(int x, int y) => x + y;
// int sub(int x, int y) => x + y;

// List<Function> operators = [add, sub];

// void main() {
//   var result = operators[1](10, 20);
//   print("Result is $result");
// }

// calc(int b) {
//   int c = 1;

//   return () => print("The value is ${b + c++}");
// }

// void main() {
//   (a, b) {
//     print("Hello, from closure: ${a + b}");
//   }(20, 30.0);

//   var f = calc(10);
//   f();
//   calc(10)();
//   f();
//   f();
// }


//2 chapter

// void main() {
//   var y;
//   for (int x = 10; x > 1; x--) {
//     y = x + 1;
//     print("$x");
//   }

//   print(y);
// }

// void main() {
//   int x = 10;
//   do {
//     print("$x");
//     x--;
//   } while (x > 1);
// int x = 10;
// while (x > 1) {
//   print("$x");
//   x--;
// }
//   var digit = 1;

//   switch (digit) {
//     case 0:
//       print("zero");
//       break;
//     case 1:
//     case 2:
//     case 3:
//     case 4:
//       print("four");
//       break;
//     default:
//       print("not a digit");
//   }

// var s = "Circle";
// switch (s) {
//   case "Square":
//     print("4 sides");
//     break;
//   case "Rectangle":
//     print("4 sides with 2 different lengths");
//     break;
//   case "Circle":
//     print("Round and Round we go");
//     break;
//   default:
//     print("No match");
// }
// }

// void main() {
//   bool t = true;
//   bool f = false;

//   if (!f) {
//     print("Negate False");
//   } else {
//     print("Will never print");
//   }

//   if (1 < 10) {
//     print("1 is less than 10");
//   } else if (1 >= 0) {
//     print("1 is greater than or equal to 0");
//   } else if (-1 < 0) {
//     print("Will never print");
//   }

// == (= =) equal to
// != (! =) not equal to
// > greater than
// < less than
// >= (> =) greater than or equal to
// <= (< =) less than or equal to
// ! negation
// }

// void main() {
//   print("This is a String");
//   print('This is a String');

//   var x = 1.4;
//   var y = 2;
//   var a = "\"Add numbers: \n\n $x and $y: \$${x + y}\"";
//   print(a);
// }

// void main() {
//   var x = [
//     1,
//     "2",
//     3.0,
//     true,
//     () {},
//     #symbol,
//     Runes("123"),
//     [1, 2, 3],
//     {"A": 4}
//   ];

//   //dynamic -> Generalizes all Types
//   //Object -> All Types are derived from Object

//   print(x);
// }

// JIT (Just in Time) -- Hot Reloading
// AOT (Ahead of Time) -- Publishing Program

//3 Chapter

void main() {
  var c = Complex(5, 2);

  var c2 = Complex(2, 5);
  var r = Complex.real(10);
  var i = Complex.imaginary(-4);

  i.imaginary = 20;
  i.real = 50;

  print(i.real);
  print(i.imaginary);

  print(c == c2);
  print(c2);
  print(c);
  print(r);
  print(i);
}

class Complex {
  num _real;
  num _imaginary;

  get real => _real;
  set real(num value) => _real = value;

  get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;
  // num getReal() {
  //   return _real;
  // }
  // void setReal(num real) {
  //   this._real = real;
  // }
  // num getImaginary() {
  //   return _imaginary;
  // }
  // void setImaginary(num imaginary) {
  //   this._imaginary = imaginary;
  // }

  Complex(this._real, this._imaginary);

  Complex.real(num real) : this(real, 0);

  Complex.imaginary(num imaginary) : this(0, imaginary);

  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }
    return this._real == other._real && this._imaginary == other._imaginary;
  }

  @override
  String toString() {
    if (this._imaginary >= 0) {
      return '${this._real} + ${this._imaginary}i';
    }
    return '${this._real} - ${this._imaginary.abs()}i';
  }
}

// num is a parent of int and double
// Object is the parent for all Objects in dart

// void main() {
//   var c = Complex();
//   c.imaginary = 2;
//   c.real = 5;

//   var c2 = Complex()
//     ..imaginary = 2
//     ..real = 5;

// var x = Complex();
// error
// print(x);

//   print(c == c2);

//   print(c2);

//   print(c);
// }

// Complex Numbers
// i^2 = -1
// 5 + 2i
// 10 + 0i
// 0 - 4i
// class Complex {
//   num real;
//   num imaginary;

//   @override
//   bool operator ==(other) {
//     if (!(other is Complex)) {
//       return false;
//     }
//     return this.real == other.real && this.imaginary == other.imaginary;
//   }

//   @override
//   String toString() {
//     if (imaginary >= 0) {
//       return '${real} + ${imaginary}i';
//     }
//     return '${real} - ${imaginary.abs()}i';
//   }
// }

//4 Chapter
void main() {
  // const x = 10;
  var n1 = Complex(3, -2);
  var n2 = Complex(1, 4);
  var q = Quaternion(1, -2, 3);
  print(n1 + n2);
  print(n1.multiply(n2));
  print(Complex.subtract(n1, q));
  print(q + n2);
}

// u + vi
// 3 - 2i
// i^2 = -1

// (3 - 2i) * (1 + 4i) = 3 + -2i + 12i + 8 = 11 + 10i

class Complex {
  num _real;
  num _imaginary;

  // static const x = 10;
  // static num counter = 0;

  get real => _real;
  set real(num value) => _real = value;

  get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;

  Complex(this._real, this._imaginary);

  Complex.real(num real) : this(real, 0);

  Complex.imaginary(num imaginary) : this(0, imaginary);

  Complex operator +(Complex c) {
    return Complex(
      this.real + c.real,
      this.imaginary + c.imaginary,
    );
  }

// (3 - 2i) * (1 + 4i) = 3 + -2i + 12i + 8 = 11 + 10i
  Complex multiply(Complex c) {
    var first = this.real * c.real;
    var inner = this.imaginary * c.real;
    var outer = this.real * c.imaginary;
    var last = -(this.imaginary * c.imaginary);

    return Complex(first + last, inner + outer);
  }

  static Complex subtract(Complex c1, Complex c2) {
    return Complex(
      c1.real - c2.real,
      c1.imaginary - c2.imaginary,
    );
  }

  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }
    return this._real == other._real && this._imaginary == other._imaginary;
  }

  @override
  String toString() {
    if (this._imaginary >= 0) {
      return '${this._real} + ${this._imaginary}i';
    }
    return '${this._real} - ${this._imaginary.abs()}i';
  }
}

// Quaternion
// u + vi + xj

// i = j = sqrt(-1)

class Quaternion extends Complex {
  num jImage;

  Quaternion(
      num real,
      num imaginary,
      this.jImage,
      ) : super(
    real,
    imaginary,
  );

  @override
  String toString() {
    if (this.jImage >= 0 && this._imaginary >= 0) {
      return '${this._real} + ${this.imaginary}i + ${this.jImage}j';
    }
    if (this.jImage >= 0 && this._imaginary < 0) {
      return '${this._real} - ${this.imaginary.abs()}i + ${this.jImage.abs()}j';
    }
    if (this.jImage < 0 && this._imaginary >= 0) {
      return '${this._real} + ${this.imaginary.abs()}i - ${this.jImage.abs()}';
    }
    return '${this._real} - ${this.imaginary.abs()}i - ${this.jImage.abs()}j';
  }
 //5 Chapter

  void main() {
    A c = C("C");
    c.hello();
    (c as B).goodbye();
    (c as C).hi();
    (c as C).printStamp();
  }

  class TimeStamp {
  DateTime time = DateTime.now();
  void printStamp() {
  print(time);
  }
  }

  class A {
  void hello() {
  print("Hello from A");
  }
  }

  class B {
  String b;

  B(this.b);

  void hi() {
  print("Hello from B");
  }

  void goodbye() {
  print("Bye bye $b");
  }
  }

  class C with TimeStamp implements A, B {
  C(this.b);

  @override
  void hello() {
  print("Hello from C");
  }

  @override
  void hi() {
  print("Hi from C");
  }

  @override
  String b;

  @override
  void goodbye() {
  print("Bye bye $b");
  }
  }

// import 'dart:math';

// void main() {
//   Square square = Square(10.0);
//   Rectangle rectangle = Rectangle(20.0, 15.0);
//   Circle circle = Circle(2.0);

//   print(square.name);
//   print(rectangle.name);
//   print(circle.name);

//   Shape randShape;

//   Random random = Random();
//   int choice = random.nextInt(3);

//   switch (choice) {
//     case 0:
//       randShape = Circle(
//         random.nextInt(10) + 1.0,
//       );
//       break;
//     case 1:
//       randShape = Rectangle(
//         random.nextInt(10) + 1.0,
//         random.nextInt(10) + 1.0,
//       );
//       break;
//     case 2:
//       randShape = Square(
//         random.nextInt(10) + 1.0,
//       );
//       break;
//     default:
//       print("will never execute");
//   }

//   print(randShape.name);
//   print(randShape.area);
//   print(randShape.perimeter);
// }

// abstract class Shape {
//   double get perimeter;
//   double get area;
//   String get name;
// }

// class Circle extends Shape {
//   double radius;

//   Circle(this.radius);

//   @override
//   double get area => pi * (radius * radius);

//   @override
//   String get name => "I am a circle with radius: $radius";

//   @override
//   double get perimeter => radius * 2 * pi;
// }

// class Rectangle extends Shape {
//   double length, width;

//   Rectangle(this.length, this.width);

//   @override
//   double get area => length * width;

//   @override
//   String get name => "I am a rectangle with length: $length and width: $width";

//   @override
//   double get perimeter => length * 2 + width * 2;
// }

// class Square extends Rectangle {
//   Square(
//     double side,
//   ) : super(
//           side,
//           side,
//         );

//   @override
//   String get name => "I am a square with side of $length";
// }

//6 Chapter

  import 'dart:math' as Math;

  void main() {
  var numbers = Iterable.generate(1000, (i) => i);

  print(numbers.reduce(Math.min));
  print(numbers.reduce(Math.max));

  Map<int, int> map = Map.fromIterable(
  numbers.take(10),
  );
  var newMap = map.map(
  (int k, int v) => MapEntry(k, k + v),
  );

  print(newMap[0]);
  print(newMap[9]);

  // numbers.reduce();
  // numbers.map();
  // numbers.where();

  // var sum = 0;
  // for (var x in numbers) {
  //   sum += x;
  //   // sum = sum + x;
  // }
  // print(sum);

  // print(numbers.reduce((prev, i) => prev + i));

  // print(
  //   numbers.take(10).map((n) => n * 2).toList(),
  // );

  // print(numbers.any((n) => n % 2 == 0));

  // print(numbers.every((n) => n % 2 == 0));

  // print(
  //   numbers.where((n) => n % 2 == 0).toList(),
  // );

  // print(numbers.take(10).toList());

  // print(
  //   numbers
  //       .takeWhile(
  //         (n) => n < 10,
  //       )
  //       .toList(),
  // );

  // print(numbers.first);
  // print(numbers.last);

  // print(numbers.skip(4).toList());

  // numbers.forEach(
  //   (n) => print(n),
  // );

  // for (var n in numbers) {
  //   print(n);
  // }
  // var list = numbers.toList();
  // var s = numbers.toSet();
  // var str = numbers.toString();

  // print(list);
  // print(s);
  // print(str);
  }

// void main() {
//   List<int> x = [1, 2, 3, 4];

//   print(x[0]);

//   for (int i in x) {
//     print(i);
//   }

//   for (int i = 0; i < x.length; i++) {
//     print(x[i]);
//   }
// }


//7 Chapter

// import 'dart:io';

// void main() {
//   PrintItems<int> printItemsInt = PrintItems(10, 50, Status.stopped);
//   printItemsInt.prints();

//   PrintItems<String> printItemsString =
//       PrintItems(20, "Hi there!", Status.running);
//   printItemsString.prints();

//   PrintItems<PrintItems> printItems =
//       PrintItems(2, printItemsInt, Status.stopped);
//   printItems.prints();
// }

// class PrintItems<T> {
//   int times;
//   T printedItem;
//   Status status;

//   PrintItems(this.times, this.printedItem, this.status);

//   void prints() {
//     if (status.index == 1) {
//       for (int i = 0; i < times; i++) {
//         print(printedItem);
//       }
//     } else {
//       print("Item Stopped: ${status} ${status.index}");
//     }
//   }
// }

// enum Status {
//   stopped,
//   running,
// }

// void main() {
//   int index;
//   List<String> names = ["John", "Jackie", "Jerry", "Sarah"];
//   String input;

//   print("Enter an index: ");
//   input = stdin.readLineSync();
//   try {
//     index = int.parse(input);
//     print(names[index]);
//   } on FormatException {
//     print("Could not parse the input!");
//   } on RangeError {
//     print("int out of range of index");
//   } finally {
//     print("You selected $index out of ${names.length}");
//   }

// }

// class AgeException implements Exception {
//   String message;
//   AgeException(this.message);

//   @override
//   String toString() {
//     return message;
//   }
// }

// class BannedPerson implements Exception {
//   @override
//   String toString() {
//     return "That person was banned from the Bar!";
//   }
// }

// class Person {
//   String name;
//   int age;
//   Person(this.name, this.age);
//   @override
//   String toString() {
//     return name;
//   }
// }

// class Pub {
//   List<Person> patrons = List();

//   void checkAge(Person p) {
//     if (p.age < 18) {
//       throw AgeException("User is under age!");
//     }
//     if (p.name == "Jacky") {
//       throw BannedPerson();
//     } else {
//       patrons.add(p);
//     }
//   }
// }

// void main() {
//   Pub checkPerson = Pub();

//   try {
//     checkPerson.checkAge(Person("Jimmy", 40));
//     checkPerson.checkAge(Person("Jacky", 23));
//     checkPerson.checkAge(Person("Jonny", 12));
//   } catch (e) {
//     print(e);
//   }

//   print(checkPerson.patrons);
// }

// class Animal {
//   String type;

//   factory Animal(String type) {
//     if (type == "cat") {
//       return Cat(type);
//     } else if (type == "dog") {
//       return Dog(type);
//     } else {
//       throw AnimalException(type);
//     }
//   }

//   Animal._type(this.type);
// }

// class AnimalException implements Exception {
//   AnimalException(this.type);

//   String type;
//   @override
//   String toString() {
//     return "$type is not a valid type";
//   }
// }

// class Cat extends Animal {
//   Cat(String type) : super._type(type);

//   @override
//   String toString() {
//     return type;
//   }
// }

// class Dog extends Animal {
//   Dog(String type) : super._type(type);

//   @override
//   String toString() {
//     return type;
//   }
// }

// class Item {
//   static Item item;
//   String state;

//   factory Item(String state) {
//     if (Item.item == null) {
//       Item.item = Item._internal()..state = state;
//     }
//     return Item.item..state = state;
//   }

//   Item._internal();
// }

// void main() {
//   try {
//     Animal a = Animal("dog");
//     print(a);
//   } catch (e) {
//     print(e);
//   }

//   Item item = Item("Some State");
//   print(item.state);
//   Item item2 = Item("Some other State");
//   Item item3 = Item("different state");

//   print(item.state);
//   print(item2.state);
//   print(item3.state);
// }

//8 Chapter

  import 'dart:isolate';
  import 'dart:async';
  import 'dart:io';

  void main() {
  ReceivePort rPort = ReceivePort();
  rPort.listen((data) {
  if (data is String) {
  print(data);
  } else {
  print("Pi is $data");
  rPort.close();
  }
  });

  Isolate.spawn(calculatePI, rPort.sendPort);
  }

  void calculatePI(SendPort sPort) {
  int iters = 1000000000;
  double s = 1.0;
  double den = 3.0;
  double neg = -1.0;

  for (int i = 0; i < iters; i++) {
  s += (neg * (1 / den));
  den += 2.0;
  neg *= -1.0;
  if (i / iters == 0.25 || i / iters == 0.50 || i / iters == 0.75) {
  sPort.send("${(i / iters * 100)}% Complete");
  }
  }

  double pi = 4 * s;

  sPort.send(pi);
  }

// void main() async {
//   String f = await File("text.txt").readAsString();
//   print(f);

// }

// void main() async {
//   print("program start");

//   print(await future());
//   print(await event1());
//   print(await event2());
//   print("program end");
// }

// Future<String> future() async {
//   Completer<String> completer = Completer();

//   Future.delayed(Duration(seconds: 2), () {
//     completer.complete("delayed call");
//   });

//   return completer.future;
// }

// Future<String> event1() async {
//   return Future.value("This is a future event");
// }

// Future<String> event2() async {
//   return Future.value("This is another future event");
// }

//9 Chapter

// void main() {
//   print("Hello, World");
// }

// void main() {
//   print("Hi");
//   print("From Dart!");
// }

// void main() {
//   var x = -10;

//   print(x.abs());
// }

// void main() {
// Numbers - (int, double) num
// Strings - "Hello!" (single and double quotes)
// Booleans - true or false
// Lists - collections of items (like arrays) List<int> 0 indexed
// Maps - Collections with associated Key Value Pairs Map<String, int>
// runes - unicode character points
// symbols - #symbol (simbolic metadata)

//   int x = 10;
//   double y = 10.0;

//   String s = "${x + y}";
//   print(s);
//   bool b = true;
//   print(b);
//   List l = [1, 2, 3];
//   print(l[0]);
//   List<String> ls = ["1", "2", "3"];
//   print(ls[1]);

//   Map<String, int> map = {
//     'A': 10,
//     'B': 20,
//     'C': 30,
//   };

//   print(map["A"]);
// }

// int add(int a, int b) {
//   return a + b;
// }
// Type based function
// add(a, b) {
//   return a + b;
// }
// No types

// void main() {
//   print(add(1, 2));
//   print(add(20.0, 40.0));
//   print(add("a", "b"));
//   print(add(true, false));
// }

// int add(int a, int b) {
//   return a + b;
// }

// Function fun;

// void main() {
//   fun = add;

//   var result = fun(20, 30);

//   print("Result is $result");
// }

// int add(int a, int b) {
//   return a + b;
// }

// exec(Function op, x, y) {
//   return op(x, y);
// }

// void main() {
//   var result = exec(add, 20, 30);
//   print("Result is $result");
// }

// int add(int x, int y) => x + y;
// int sub(int x, int y) => x + y;

// choose(bool op) {
//   if (op == true) {
//     return add;
//   } else {
//     return sub;
//   }
// }

// void main() {
//   var result = choose(true)(10, 20);
//   print("Result is $result");
// }

// int add(int x, int y) => x + y;
// int sub(int x, int y) => x + y;

// List<Function> operators = [add, sub];

// void main() {
//   var result = operators[1](10, 20);
//   print("Result is $result");
// }

// calc(int b) {
//   int c = 1;

//   return () => print("The value is ${b + c++}");
// }

// void main() {
//   (a, b) {
//     print("Hello, from closure: ${a + b}");
//   }(20, 30.0);

//   var f = calc(10);
//   f();
//   calc(10)();
//   f();
//   f();
// }
