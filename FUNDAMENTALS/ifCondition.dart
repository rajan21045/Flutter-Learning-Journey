void main() {
  int age = 13;
  if (age >= 18) {
    print('You Are Adult.');
  } else {
    print('You Are Not Adult.');
  }

  int number = 221;
  if (number>10 && number<100){
    print("The NUmber Is Between 10 And 100");
  } else if (number>=100 && number<200){
    print("The Number Is Between 100 And 200");
  } else {
    print("The Number Is Greater Than Or Equal To 200 Or Less Than Or Equal To 10");
  }

  String text = "Hello";
  if (text.startsWith("H")){
    print("The Text Starts With H");
  } else {
    print("The Text Does Not Start With H");
  }
}
