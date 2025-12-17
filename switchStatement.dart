void main() {
  String grade = "B";
  switch (grade) {
    case 'A':
      print("Wow");
    // break; is optional in Dart switch cases if there are no fall-throughs.
    case 'B':
      print("Good");
    // break; is optional in Dart switch cases if there are no fall-throughs.
    case 'C':
      print("Okay");
    // break; is optional in Dart switch cases if there are no fall-throughs.
    default:
      print("Invalid Grade");
  }

  int age = 18;
  switch (grade) {
    case 'A' when age >= 18 :
      print("Wow");
    // break; is optional in Dart switch cases if there are no fall-throughs.
    case 'B' when age >= 18:
      print("Good");
    // break; is optional in Dart switch cases if there are no fall-throughs.
    case 'C' when age >= 18:
      print("Okay");
    // break; is optional in Dart switch cases if there are no fall-throughs.
    default:
      print("Invalid Grade");
  }
  
}
