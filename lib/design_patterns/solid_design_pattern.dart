


// S — Single Responsibility Principle (SRP)
// O — Open/Closed Principle (OCP)
// L — Liskov Substitution Principle (LSP)
// I — Interface Segregation Principle (ISP)
// D — Dependency Inversion Principle (DIP)


// 1 — Single Responsibility Principle (SRP)
// A class should have only one reason to change.

// Each class should focus on a single task or responsibility.
// Why: It makes the class easier to understand, test, and maintain.


class UserRepository {
  void saveUser(String user) {
    // logic to save user
  }
}

class EmailService {
  void sendWelcomeEmail(String email) {
    // logic to send email
  }
}




// 2 — Open/Closed Principle (OCP)

// Software entities should be open for extension but closed for modification.

// You should be able to add new functionality without changing existing code.
// Achieved using abstraction (like interfaces or abstract classes).


abstract class Shape {
  double area();
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
  @override
  double area() => 3.14 * radius * radius;
}

class Square implements Shape {
  final double side;
  Square(this.side);
  @override
  double area() => side * side;
}


// 3. Liskov Substitution Principle (LSP)
    // Subclasses should be substitutable for their base classes.
    // A subclass should extend the base class without changing its behavior.

abstract class Bird {
  void eat();
}

abstract class FlyingBird extends Bird {
  void fly();
}

class Sparrow extends FlyingBird {
  @override
  void fly() => print("Sparrow is flying");
  
  @override
  void eat() {
    // TODO: implement eat
  }
}

class Penguin extends Bird {
  void swim() => print("Penguin is swimming");
  
  @override
  void eat() {
    // TODO: implement eat
  }
}


// 4 — Interface Segregation Principle (ISP)
// Clients should not be forced to depend on interfaces they do not use.
// Split large interfaces into smaller ones.

abstract class Printer {
  void printDocument();
}

abstract class Scanner {
  void scanDocument();
}

class AllInOnePrinter implements Printer, Scanner {
  @override
  void printDocument() => print("Printing document...");

  @override
  void scanDocument() => print("Scanning document...");
}

class SimplePrinter implements Printer {
  @override
  void printDocument() => print("Printing document...");
}



//  5 — Dependency Inversion Principle (DIP)
    // High-level modules should not depend on low-level modules. Both should depend on abstractions.
    // Depend on abstractions (interfaces), not concrete implementations.

abstract class AuthService {
  void authenticate();
}

class FirebaseAuthService implements AuthService {
  @override
  void authenticate() {
    print("Authenticating with Firebase...");
  }
}

class AuthController {
  final AuthService authService;

  AuthController(this.authService);

  void login() {
    authService.authenticate();
  }
}

void main() {
  final authService = FirebaseAuthService();
  final authController = AuthController(authService);

  authController.login();
}





