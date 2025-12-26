// Import dart:io library
// This is required for taking input from the user using stdin
import 'dart:io';

/*
=========================
1. Student Class
=========================
This class represents a student.
It contains student details such as name, roll number, and marks.
*/
class Student {

  // Instance variables (properties of the class)
  String name;     // Stores student's name
  int rollNo;      // Stores student's roll number
  double marks;    // Stores student's marks

  // Constructor
  // This constructor initializes the Student object
  // when an object is created using the class
  Student(this.name, this.rollNo, this.marks);

  // Method to display student details
  void display() {
    print("Hi, My Name Is $name, Roll No Is $rollNo, And Marks Is $marks");
  }
}

/*
=========================
2. Car Class
=========================
This class represents a car.
It stores information about the car such as brand, model, and year.
*/
class Car {

  // Instance variables
  String brand;    // Car brand name
  String model;    // Car model name
  String year;     // Manufacturing year

  // Constructor to initialize car details
  Car(this.brand, this.model, this.year);

  // Method to display car details
  void display() {
    print("Car Brand: $brand, Model: $model, Year: $year");
  }
}

/*
=========================
3. BankAccount Class
=========================
This class represents a bank account.
It supports deposit and withdrawal operations.
*/
class BankAccount {

  // Instance variables
  String accountHolder;   // Name of the account holder
  int accountNumber;      // Bank account number
  double balance;         // Current account balance

  // Constructor to initialize bank account details
  BankAccount(this.accountHolder, this.accountNumber, this.balance);

  // Method to deposit money into the account
  void deposit() {

    // Ask user to enter deposit amount
    stdout.write("Enter Amount To Deposit: ");

    // Read input from user and convert it to double
    double amount = double.parse(stdin.readLineSync()!);

    // Add deposit amount to balance
    balance += amount;

    // Display updated balance
    print("Deposit Successful! Updated Balance: $balance");
  }

  // Method to withdraw money from the account
  void withdraw() {

    // Ask user to enter withdrawal amount
    stdout.write("Enter Amount To Withdraw: ");

    // Read withdrawal amount
    double amount = double.parse(stdin.readLineSync()!);

    // Check if sufficient balance is available
    if (amount > balance) {
      // Error message if balance is insufficient
      print("Error! Insufficient Balance");
    } else {
      // Deduct amount from balance
      balance -= amount;

      // Display updated balance
      print("Withdrawal Successful! Updated Balance: $balance");
    }
  }
}

/*
=========================
Main Function
=========================
Program execution starts from here.
*/
void main() {

  // Creating a Student object and passing values to constructor
  Student st1 = Student("Rajan Poudel", 21, 41.1);

  // Calling display method of Student class
  st1.display();

  // Blank line for better output formatting
  print("");

  // Creating a Car object
  Car cc = Car("Ford", "FSKFFN", "2025");

  // Calling display method of Car class
  cc.display();

  // Blank line for better output formatting
  print("");

  // Creating a BankAccount object with initial balance
  BankAccount bA = BankAccount("Rajan Poudel", 123456, 1000.0);

  // Calling deposit method
  bA.deposit();

  // Calling withdraw method
  bA.withdraw();
}
