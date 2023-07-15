import 'dart:io';
import 'dart:math';

void main() {
  //Ques No 1:

  //Write a program that takes a list of numbers as input and prints the even numbers in the list using a for loop.

  //------------------------------

//  print("How many numbers you want to enter in a list?");
//  int noOfElem = int.parse(stdin.readLineSync()!);
//  List list1=[];
//  for(int i = 0; i < noOfElem ; i++){
//   int numb = int.parse(stdin.readLineSync()!);
//   list1.add(numb);
//  }

//  List Even=[];

//  for(int a in list1){
//   if(a%2==0){
//     Even.add(a);
//   }
//  }
//  print(list1);
//  print(Even);

  //-------------------------------------------------------------------------

  //Ques2
  //Write a program that prints the Fibonacci sequence up to a given number using a for loop.

  // print("Enter the number");
  // int FS = int.parse(stdin.readLineSync()!);

  // var first = 0;
  // var second = 1;

  // for (int i = 2; i <= FS; i++) {
  //   var next = first + second;
  //   print(next);
  //   first = second;
  //   second = next;
  // }

  //---------------------------------------------------------------------
  //          Ques No 3

  //Implement a code that checks whether a given number is prime or not.

  // print("Enter a num to check if it is prime or not");
  // int numb = int.parse(stdin.readLineSync()!);
  // var squareRoot = sqrt(numb);
  // print(squareRoot);

  // bool isPrime = true;

  // for (var i = 2; i <= squareRoot; i++) {
  //   if (numb % i == 0) {
  //     isPrime = false;
  //     break;
  //   }
  // }

  // if (isPrime == true) {
  //   print("Prime");
  // } else {
  //   print("not prime");
  // }

  //-------------------------------------------------------------------------

  //                      Question no 4:

  //Implement a code that finds the factorial of a number using a while loop or for loop.

  // 5
  // 5*4*3*2*1

  // print("Enter a number to calculate factorial");
  // int num = int.parse(stdin.readLineSync()!);
  // List list = [];
  // dynamic count = 1;
  // for (var i = num; i >= 1; i--) {
  //   list.add(i);
  // }

  // for (var j in list) {
  //   count = count * j;
  // }

  // print("Factorial of $num is $count");
  // print(list);

  //-------------------------

  //practiceeeeee

//   dynamic list = []
//   dynamic count = 1;
//   for (var j in list) {
//     count = count * j;
//     print(count);
//   }
// }

//--------------------------------------------

// Ques 5
//Write a program that calculates the sum of all the digits in a given number using a while loop.

  //Using FOR LOOP

  // String num = "12345";
  // dynamic count = 0;

  // for (var i = 0; i < num.length; i++) {
  //   String char = num[i];
  //   int toINT = int.parse(char);
  //   count = count + toINT;
  // }
  // print(count);

  //Using While Loop

  // String num1 = "12345";
  // int len = num1.length;
  // int starting = 0;
  // dynamic countt = 0;
  // while (starting < len) {
  //   String variable = num1[starting];
  //   int toINT = int.parse(variable);
  //   countt = countt + toINT;
  //   starting++;
  // }

  // print(countt);

//-------------------------------------------------

  //Ques num 6

  //Implement a code that finds the largest element in a list using a for loop

  // List list1 = [];
  // var o = 1;

  // while (o == 1) {
  //   print("Enter numbers to form a list");
  //   var num = int.parse(stdin.readLineSync()!);
  //   list1.add(num);

  //   print(
  //       "If you want to enter more press 1, otherwise enter any other number:");
  //   o = int.parse(stdin.readLineSync()!);
  // }
  // print(list1);

  // list1.sort();
  // var len = list1.length - 1;
  // var largestNum = list1[len];
  // print("$largestNum is the largest Number");

  //----------------------  OR ------------------

  // List list1 = [];
  // var o = 1;

  // while (o == 1) {
  //   print("Enter numbers to form a list");
  //   var num = int.parse(stdin.readLineSync()!);
  //   list1.add(num);

  //   print("If you want to enter more press 1, otherwise enter any other number:");
  //   o = int.parse(stdin.readLineSync()!);
  // }
  // print(list1);

  // var largestNumber = list1[0];
  // for (int i in list1) {
  //   if (i > largestNumber) {
  //     largestNumber = i;
  //   }
  // }
  // print("$largestNumber is the Largest number in the list");

//------------------------------------------------

//Ques 7
//Write a program that prints the multiplication table of a given number using a for loop

  // var num = 5;
  // for (var i = 1; i <= 10; i++) {
  //   print("$num x $i = ${num * i}");
  // }

//----------------------------------------------------

  //Ques 9
  //Implement a function that checks if a given string is a palindrome

  // String str1 = "Madam";
  // String str = str1.toLowerCase();
  // var is_palindrome = true;

  // for (var i = 0; i < str.length; i++) {
  //   if (str[i] != str[str.length - (i + 1)]) {
  //     is_palindrome = false;
  //   }
  // }

  // if (is_palindrome == true) {
  //   print("The string $str is a palindrome.");
  // } else {
  //   print("The string $str is not a palindrome.");
  // }

  // print(str[str.length - (0+1)]);
  // print(str[0]);

  // ............................. OR ..................................

  //   String str1 = "wow";
  // String str = str1.toLowerCase();

  // String reversed = "";
  // for (var i = 0; i <= str.length - 1; i++) {
  //   String rev = str[str.length - i - 1];
  //   reversed = reversed + rev;

  // }

  // if (reversed == str) {
  //   print("Palindrome");
  // } else {
  //   print("Not a palindrome");
  // }

//-----------------------------------------------------

//Ques 10
//Write a program to display the cube of the number up to an integer.

  // print("Enter a num to calulate cube of number untill that num");
  // int Numm = int.parse(stdin.readLineSync()!);
  // for (var i = 1; i <= Numm; i++) {
  //   print("Number is $i and cube of  the $i is ${i * i * i}");
  // }

  //--------------------------------------------------------------------

  //Ques 11
//   Write a program to display a pattern like a right angle triangle using an
// asterisk using loop.
// The pattern like :
// *
// **
// ***
// ****

  // for (var i = 1; i <= 5; i++) {
  //   for (var j = 1; j <= i; j++) {
  //     stdout.write("*");
  //   }
  //   print("");
  // }

//-----------------------------------------------------
//Ques 12
// Write a program to display a pattern like a right angle triangle with a
// number using loop.
// The pattern like :
// 1
// 12
// 123
// 1234

  // for (var i = 1; i <= 5; i++) {
  //   for (var j = 1; j <= i; j++) {
  //     stdout.write(j);
  //   }
  //   print("");
  // }

  //-----------------------------------------------------
  //Ques 13
  //Write a program to make such a pattern like a right angle triangle with a number which will repeat a number in a row.
// The pattern like :
//  1
//  22
//  333
//  4444

  // for (var i = 1; i <= 5; i++) {
  //   for (var j = 1; j <= i; j++) {
  //     stdout.write(i);
  //   }
  //   print("");
  // }

  //----------------------------------------------------------------------

  //-----------------------------------------------------------------

  // ......................... Ques No 17 ..........................
// Write a program that asks the user for their email and password. If the
// email and password match a predefined set of credentials, print "User
// login successful." Otherwise, keep asking for the email and password
// until the correct credentials are provided.

  // dynamic Email = "asra@gmail.com";
  // dynamic Password = "1234";

  // print("Enter your Email to login");
  // var id = stdin.readLineSync();

  // print("Enter your Password to login");
  // var pass = stdin.readLineSync();

  // if (Email == id) {
  //   while (Password != pass) {
  //     print("Your password is incorrect");
  //     print("Enter your password again");
  //     pass = stdin.readLineSync();
  //   }
  //   print("Login successful");
  // } else if (Password == pass) {
  //   while (Email != id) {
  //     print("Your Email is incorrect");
  //     print("Enter your Email again");
  //     id = stdin.readLineSync();
  //   }
  //   print("Login successful");
  // } else {
  //   print("Both are incorrect try again");
  // }

  //---------------- OR ---------------------------------

  // dynamic Email = "asra@gmail.com";
  // dynamic Password = "1234";

  // print("Enter your Email to login");
  // var id = stdin.readLineSync();

  // print("Enter your Password to login");
  // var pass = stdin.readLineSync();

  // if(Email == id && pass == Password){
  //   print("Login successful");
  // }else{
  //   while(Password != pass || Email != id){
  //     print("Incorrect Email or Password. Please try again.");
  //     print("Enter your Email again to login");
  //     id = stdin.readLineSync();

  //     print("Enter your Password again to login");
  //     pass = stdin.readLineSync();

  //   }
  //   print("Again wala login successful");
  // }

  //-------------------------------------------------------------------

//......................Ques No 18..................................
// Write a program that asks the user for their email and password. You
// are given a list of predefined user credentials (email and password
// combinations). If the entered email and password match any of the
// credentials in the list, print "User login successful." Otherwise, keep
// asking for the email and password until the correct credentials are
// provided.

//   List<Map<String, dynamic>> predefinedCredentials = [];
//   Map<String, dynamic> map1 = {
//     "Email1": "asra@gmail.com",
//     "Pass1": "123",
//     "Email2": "aliza@gmail.com",
//     "Pass2": "456",
//     "Email3": "Shabbir@gmail.com",
//     "Pass3": "789"
//   };
//   predefinedCredentials.add(map1);
//   var emailPassLIST = predefinedCredentials[0].keys.toList();
//   print(emailPassLIST);

//   print("Enter Email:");
//   var E = stdin.readLineSync();
//   bool emailCorrect = false;

//   for (var i = 0; i <= emailPassLIST.length - 1; i++) {
//     var keys = emailPassLIST[i];
//     var val = predefinedCredentials[0][keys];
//     // print(val);
//     if (E == val) {
//       emailCorrect = true;
//       break;
//     }
//   }

//   print("Emter Passwrd");
//   var P = stdin.readLineSync();
//   bool passCorrect = false;

//   for (var i = 1; i <= emailPassLIST.length - 1; i += 2) {
//     var keys2 = emailPassLIST[i];
//     var val2 = predefinedCredentials[0][keys2];
//     if (P == val2) {
//       passCorrect = true;
//       break;
//     }
//   }

//   if (emailCorrect == true && passCorrect == true) {
//     print("Login successful");
//   } else {
//     print("Login Failed");
//   }

  //---------------------------------------------------------------------

  //........................Ques No 19.................................
//   Write a program that takes a list of numbers as input and prints the
// numbers greater than 5 using a for loop and if-else condition

  // List<int> integers = [];
  // print("How many numbers you want to Enter in a list ");
  // var Num = int.parse(stdin.readLineSync()!);

  // print("Enter Numbers to form a list");
  // for (var i = 1; i <= Num; i++) {
  //   var listNumbers = int.parse(stdin.readLineSync()!);
  //   integers.add(listNumbers);
  // }
  // print(integers);

  // for (var j in integers) {
  //   if (j > 5) {
  //     print("$j is greater than 5 ");
  //   } else {
  //     print("$j is not greater than 5");
  //   }
  // }

  //------------------------------------------------------------------------

  //........................... Ques 20...........................
//Write a program that counts the number of vowels in a given string 
// using a for loop and if-else condition.

  // String str = "saima";
  // var vowels = [];
  // var count = 0;
  // for (var i = 0; i <= str.length - 1; i++) {
  //   var curChar = str[i];
  //   if (curChar == "a" ||
  //       curChar == "e" ||
  //       curChar == "i" ||
  //       curChar == "o" ||
  //       curChar == "u") {
  //     count += 1;
  //     vowels.add(curChar);
  //   }
  // }
  // print(vowels);
  // print(count);

  //................  OR ..................

  // String str = "saima";
  // var count = 0;
  // var vowels = ["a", "e", "i", "o", "u"];
  // for (var i = 0; i <= str.length - 1; i++) {
  //   var currentChar = str[i];
  //   if (vowels.contains(currentChar)) {
  //     count += 1;
  //     vowels.remove(currentChar);

  //   }
  // }
  // print(count);

  //---------------------------------------------------
  //..........................Ques 21.................................
//   Implement a code that finds the maximum and minimum elements in a 
// list using a for loop and if-else condition

  // List intLIST = [30, 0, 5, 100, 20];
  // var mini = intLIST[0];
  // var maxi = intLIST[intLIST.length - 1];
  // for (var i = 0; i <= intLIST.length - 1; i++) {
  //   if (intLIST[i] < mini) {
  //     mini = intLIST[i];
  //   }
  //   if (intLIST[i] > maxi) {
  //     maxi = intLIST[i];
  //   }
  // }
  // print("$mini is the minimum");
  // print("$maxi is the maximum");

  //----------------------------------------------------------

  //......................Ques No 22.............................
//   Write a program that calculates the sum of the squares of all odd 
// numbers in a given list using a for loop and if-else condition


  // List intlist = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // int sumOfSquares = 0;
  // for (int i = 0; i <= intlist.length - 1; i++) {
  //   if (intlist[i] % 2 != 0) {
  //     int sq = intlist[i] * intlist[i];
  //     print("Sqaure of ${intlist[i]} is $sq");
  //     sumOfSquares = sumOfSquares + sq;
  //   }
  // }
  // print("$sumOfSquares is the sum of sqaures of odd numbers");

  //------------------------------------------------------------------------
  //...........................Ques 24.....................................
//   Implement a code that finds the average of all the negative numbers in 
// a list using a for loop and if-else condition.

  // List<int> mixNumbers = [0, 1, -1, 2, -2, 3, -4, 5, -6];
  // int negNumCount = 0;
  // int negNumAddition = 0;
  // for (int i = 0; i <= mixNumbers.length - 1; i++) {
  //   if (mixNumbers[i] < 0) {
  //     negNumCount = negNumCount + 1;
  //     negNumAddition += mixNumbers[i];
  //   }
  // }
  // double avg = negNumAddition / negNumCount;
  // print("$avg is the average of negative numbers");

  //-------------------------------------------------------------------

  //...........................Ques 25................................
//   Write a program that takes a list of integers as input and returns a new 
// list containing only the prime numbers from the original list. Implement 
// the solution using a for loop and logical operations

  // List<dynamic> listOfIntegers = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
  // List<dynamic> listOfPrime = [];

  // for (var i = 0; i < listOfIntegers.length; i++) {
  //   var number = listOfIntegers[i];
  //   var isPrime = true;

  //   if (number < 2) {
  //     isPrime = false;
  //   } else {
  //     for (var j = 2; j <= sqrt(number); j++) {
  //       if (number % j == 0) {
  //         isPrime = false;
  //         break;
  //       }
  //     }
  //   }

  //   if (isPrime) {
  //     listOfPrime.add(number);
  //   }
  // }

  // print(listOfPrime);

  
}
