void main() {
  /*
  1. FOR LOOP
  In Dart, the for loop is a control flow statement used to repeatedly execute a block of code a known number of times. 
  It is similar to the syntax found in other languages like C, C++, and Java. 
  
  Syntax of a for loop
  The standard for loop syntax in Dart involves three components within the parentheses, separated by semicolons: 
  
  DART
  for (initialization; condition; increment/decrement) {
    // code block to be executed repeatedly
  }
    1. Initialization: Executed only once at the beginning of the loop. It often declares and sets a loop counter variable.
    2. Condition: Evaluated before each iteration. The loop continues to execute as long as this condition is true. If false, the loop terminates.
    3. Increment/Decrement: Executed after each iteration of the loop body. It usually updates the loop control variable to move the loop towards the termination condition. 

  */
  //Example 1: Printing numbers from 1 to 5
  for (var i = 0; i < 5; i++) {
    print(i + 1);
  }
  /*
  In this example:
    1. var i = 0; is the initializer.
    2. i < 5; is the condition.
    3. i++ is the increment. 
  */

  List<String> FirstName = [
    'Rajan',
    'Anuj',
    'Sasin',
    'Prabin',
    'Ashok',
    'Abin',
    'Shishir',
  ];
  for (int i = 0; i < FirstName.length; i++) {
    print('Fruit at index $i is ${FirstName[i]}');
  }
  /*
  Example 2: Iterating over a List using a standard for loop
  You can also use a for loop to access elements of a collection by their index.

  Output:
  Fruit at index 0 is Rajan
  Fruit at index 1 is Anuj
  Fruit at index 2 is Sasin
  Fruit at index 3 is Prabin
  Fruit at index 4 is Ashok
  Fruit at index 5 is Abin
  Fruit at index 6 is Shishir
  */

  //2. WHILE LOOP
  /*
  The while loop keeps executing its block of code as long as the condition remains true. This loop is useful in scenarios where the number of times you need to repeat an action isn’t predetermined—perhaps you’re waiting for user input or monitoring a changing variable.

Syntax: 
  while (condition) {
  // Body of loop
}
  */
  int num = 5;
  int k = 0;
  while (k <= num) {
    print(k);
    k++;
  }

  //3. Do while
  /*
  The do...while ensures that its block of code runs at least once before it even bothers checking the condition. 
  Imagine committing to try something out first, and only after giving it a shot do you evaluate whether or not you want to continue. 
  This makes the do...while loop particularly useful in situations where you want to execute some initial setup or action before validating any subsequent conditions. 

  Syntax: 
  do{
       text expression;
        // Body of loop
  }while(condition);
  */
  int p = 1;
  int q = 5;
  do {
    print("Rajan");
    p++;
  } while (p <= q);
/*
  for...in the loop

The for...in the loop is a delightful feature in Dart that elegantly lets you iterate through the elements of a collection, such as lists or sets. It simplifies the process of accessing each element, allowing you to focus on what you want to do with the elements rather than the mechanics of looping.

Syntax: 

 for (var in expression) {
       // Body of loop
  }
  */
  //Example: 
    var GeeksForGeeks = [ 1, 2, 3, 4, 5 ];
    for (int i in GeeksForGeeks) {
        print(i);
    }
  /*Output: 
  1
  2
  3
  4
  5
  */


  /*
  In Dart, looping statements allow you to execute a block of code multiple times, either for a fixed number of iterations or based on a condition. Each type of loop serves a distinct purpose:

    1. for loop: Ideal when the number of iterations is known in advance.
    2. for...in loop: Simplifies the process of iterating over collections, such as lists or sets.
    3. forEach loop: Offers a functional approach to iterate over collections.
    4. while loop: Continues executing as long as a specified condition remains true, which is useful when the number of iterations is uncertain.
    5. do...while loop: Guarantees that the block of code executes at least once, regardless of the condition.

    Selecting the appropriate loop depends on the specific problem, the data structure being used, and the requirements for control flow. 
  */
}
