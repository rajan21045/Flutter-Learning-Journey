import 'dart:io';

void main() {
  /*
Exercise:
Develop a program to calculate the shipping cost based on the destination zone and the weight of the package (you will be provided)
Calculate the shipping cost according to these conditions:
If the destination zone is 'XYZ', the shipping cost is $5 per kilogram.

If the destination zone is 'ABC', the shipping cost is $7 per kilogram.

If the destination zone is 'PQR', the shipping cost is $10 per kilogram.

If the destination zone is not 'XYZ', 'ABC', or 'PQR', display an error message.
*/
  stdout.write(
    "Destination Zone Are\n1.XYZ\n2.ABC\n3.PQR\nEnter Your Destination Zone: ",
  );
  String? destination = stdin.readLineSync();
  stdout.write("Enter The Weight Of The Package (in kg): ");
  double weight = double.parse(stdin.readLineSync()!);

  // Calculating Shipping Cost Using Switch Statement
  switch (destination) {
    case 'XYZ':
      print("Total Shipping Cost Is: ${weight * 5} USD");
      break;
    case 'ABC':
      print("Total Shipping Cost Is: ${weight * 7} USD");
      break;
    case 'PQR':
      print("Total Shipping Cost Is: ${weight * 10} USD");
      break;
    default:
      print("Invalid Destination Zone.");
  }

  // Calculating Shipping Cost Using If-Else Statement
  if (destination == 'XYZ') {
    print("Total Shipping Cost Is: ${weight * 5} USD");
  } else if (destination == 'ABC') {
    print("Total Shipping Cost Is: ${weight * 7} USD");
  } else if (destination == 'PQR') {
    print("Total Shipping Cost Is: ${weight * 10} USD");
  } else {
    print("Invalid Destination Zone.");
  }
  
}
