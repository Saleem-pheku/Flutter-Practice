import 'dart:math'; // mathematical operations
import 'dart:io'; // input output

void main(){
  // DATA TYPES
  String myname = "Moin"; // Words
  int age = 20; // Integers
  double height = 5.5; // Decimals
  bool voter = true; // Booleans T or F
  print("my name is ${myname}"); // Concatenate with dollar sign
  print("aged ${age}");
  print("${height} feet long");
  print("is a voter? ${voter}");
  print("---------------------------");
 // CONCATENATION - Adding two strings together with plus sign
  String hi1 = "Hello";
  String hi2 = "World";
  print(hi1 + hi2);
  print("The greeting is ${hi1} ${hi2}"); // plus is not needed here
  print("---------------------------");

  // MATH and NUMBERS
  int quantity = 30;
  double price = 5.5;
  print(quantity*price);
  print(quantity/price);
  print(quantity+price);
  print(quantity-price);
  print("---------------------------");

  // INCREMENT
  int New_quantity = quantity + 30;
  print(New_quantity);
  quantity = quantity+10;
  print(quantity);
  // EASIER INCREMENT
  quantity += 10;
  print(quantity);
  quantity -= 10;
  print(quantity);
  quantity *= 10;
  print(quantity);
  //assigned quantity value +,-,* with = x value
  print("---------------------------");
 // OTHER FUNCTIONS WITH DART:MATH LIB
  print(min(3,7));
  print(max(3,8));
  print(sqrt(144));
  print("these are not gonna execute without dart math lib------");
 // MORE WITH BOOLEANS
  print(9>3);
  print(9<3);
  print(3==3);
  print(3+6>4);
  print(9<11-3);
  // print("these are gonna return boolean values----------");
  // TAKING INPUT FROM USER
  print("What is your name!??:");
  String username = stdin.readLineSync()!;
  print("Fuck You ${username}");
  print("What is your name!??:");
  String username2 = stdin.readLineSync()!;
  print("I LOVE YOU ${username2}");
  //print("Fuck You");
  //print("Fuck You!");
  //moin stdin - standard input .readLineSync() for reading input
  //print("here i got an error");
  // Error: A value of type 'String?' can't be assigned to a variable of type 'String' because 'String?' is nullable and 'String' isn't.
  //print("that error was debugged by adding ! after linesync()");
//
}
