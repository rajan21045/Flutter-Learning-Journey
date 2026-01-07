/*

Level 1: Basics of OOP (Easy)

Question 1: Class and Object

Create a class Person with:
Properties: name, age
Method: displayInfo()
Create two objects and display their details.
*/

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  Person person1 = Person("Rajan Poudel", 21);
  Person person2 = Person("John Doe", 25);
  person1.displayInfo();
  person2.displayInfo();
  print("\n");

  Car car1 = Car("Ford", "sfj", 2025);
  Car car2 = Car("Swift", "wwffv", 2026);
  car1.carInfo();
  car2.carInfo();
  print("\n");

  BankAccount account = BankAccount();
  account.deposit(12000);
  account.displayBalance();
}

/*
Question 2: Constructor

Create a class Car with:
Properties: brand, model, year 
A parameterized constructor
Method: carInfo()
*/
class Car {
  String brand;
  String model; // Changed Model to model for consistent naming convention
  int year;

  Car(this.brand, this.model, this.year); // Updated parameter name

  void carInfo() {
    print("Brand: $brand, Model: $model, Year: $year"); // Updated variable name
  }
}

/*
Question 3: Getter and Setter

Create a class BankAccount with:
Private variable _balance
Getter balance
Setter deposit(double amount)

Rules:
Deposit only if amount > 0
*/
class BankAccount {
  double _balance = 0.0;
  double get balance => _balance;

  void deposit(double value) {
    print("Current Balance: $_balance");
    if (value > 0) {
      _balance += value; // Add to balance instead of replacing it
    }
  }

  void displayBalance() {
    print("Current Balance: $_balance");
  }
}
