import 'dart:io';
/*
Level 2: Encapsulation & Methods (Medium)

Question 4: Student Management

Create a class Student:
Properties: id, name, _marks
Methods:
addMarks(int mark)
calculateAverage()
Ensure marks cannot be negative.
*/

class Student {
  int id;
  String name;
  List<double> _marks = [];

  Student(this.id, this.name);

  void addMarks(double mark) {
    if (mark > 0) {
      _marks.add(mark);
    } else {
      print("Marks cannot be negative or zero.");
    }
  }

  void displayMarks() {
    for (int i = 0; i < _marks.length; i++) {
      print("Marks for subject ${i + 1}: ${_marks[i]}");
    }
  }

  void averageMarks() {
    if (_marks.isEmpty) {
      print("No marks available to calculate average.");
      return;
    }
    double total = 0;
    for (var mark in _marks) {
      total += mark;
    }
    double average = total / _marks.length;
    print("Average Marks: ${average.toStringAsFixed(2)}");
  }
}

void main() {
  Student student = Student(1, "Rajan");
  stdout.write("How Many Marks You Want To Enter: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Enter marks for subject ${i + 1}: ");
    double mark = double.parse(stdin.readLineSync()!);

    if (mark > 0) {
      student.addMarks(mark);
    } else {
      print("Invalid mark. Enter a value greater than 0.");
      i--; // repeat input
    }
  }
  student.displayMarks();
  student.averageMarks();

  Book book = Book("Dart", "Rajan");
  book.issueBook();
  book.returnBook();
  book.status();
}

/*
Question 5: Library Book System

Create a class Book:
Properties: title, author, _isIssued
Methods:
issueBook()
returnBook()
status()
Apply encapsulation properly.
*/

class Book {
  String title;
  String author;
  bool _isIssued = false;

  Book(this.title, this.author);

  void issueBook() {
    if (_isIssued) {
      print("Book is already issued");
    } else {
      _isIssued = true;
      print("Book is issued");
    }
  }

  void returnBook() {
    if (_isIssued) {
      _isIssued = false;
      print("Book is returned");
    } else {
      print("Book is already returned");
    }
  }

  void status() {
    if (_isIssued) {
      print("Book is issued");
    } else {
      print("Book is not issued");
    }
  }
}
