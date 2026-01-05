import 'dart:io'; //import 'dart:io'; enables input/output operations.

void main() {
  // Taking Input From User (Integer)
  stdout.write("Enter Your Age: ");
  int age = int.parse(stdin.readLineSync()!);
  print("Your Age Is ${age}");

  // Taking Input From User (String)
  stdout.write("Enter Your Name: ");
  String? name = stdin.readLineSync(); //stdin.readLineSync() reads a full line from the keyboard. The return type is String? (nullable), so handle it carefully in production code.
  print("Your Name Is ${name}");

  // Taking Input From User (Double)
  stdout.write("Enter Your Height: ");
  double height = double.parse(stdin.readLineSync()!);
  print("Your Height Is ${height}");

  // try-catch block
  stdout.write("Enter The Number: ");
  String? input = stdin.readLineSync();
  try{
    int number = int.parse(input!);
    print("You Have Entered: ${number}");
  }catch (e){
    print("Invalid input! Please enter a valid integer.");
  }
}
