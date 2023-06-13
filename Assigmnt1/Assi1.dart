// Dart Assignment 1


// Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
// ie: if both values are equal then it's square otherwise rectangle.
// CODE:
// void main(){
// int Length = 5;
// int Breadth = 5;
// if(Length == Breadth){
//   print("Its a Square");
  
// }else{
//   print("Its a Rectangle");
// }
// }

// Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.
// CODE:
// void main(){
// var aliAge  = 4;
// var rehmanAge = 20;
// if(aliAge > rehmanAge && rehmanAge < aliAge){
//   print("Ali is ${aliAge} and Rehamn is ${rehmanAge} so Ali is the Oldest and Rehman is youngest");
  
// }else{
//   print("Rehamn is ${rehmanAge} and Ali is ${aliAge} so Rehman is the Oldest And Ali is the youngest");
// }
// }

// Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
// Number of classes held = 16,
// Number of classes attended = 10,
// and print percentage of class attended.
// Is student is allowed to sit in exam or not?
// CODE:
// void main(){
// int classesHELD = 16;
// int classesATTENDED = 10;
// double percent = (classesATTENDED/classesHELD)*100;
// print (percent);
  
// String StudName = "ASRA AIJAZ";
// if (percent < 75 ){
//   print("Sorry ${StudName} your attendance is less than 75% you cannot sit in the exam");
  
// }else{
//   print("You are allowed to sit in the exam");
// }


// Q.4: Create integer variable assign any year to it and check if a year is leap year or not.
// If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400.
// i.e: Use % ( modulus ) operator.
// CODE:
// void main(){
// int year = 2029;
// if (year%100==0){
//   print("A Century Year");
//   if (year%400==0 && year%4==0){
//     print("${year} is a leap year");
//   }else{
//     print("Century year But not Leap year");
//   }
// }else if (year%100 != 0){
//   print("Not a Century year");
//   if(year%4==0){
//     print("${year} is a leap year");
//   }else{
//     print("Not Century year and Not leap Year");
//   }
// }else{
//   print("Not a leap year");
// }
  
  
// }


// Q.6: Write a program to check whether an alphabet is a vowel or consonant.
// CODE:
// void main(){
// String alphabet = "f";
// String alpha= alphabet.toUpperCase();
// if (alpha == "A" || alpha == "E" || alpha =="I" || alpha=="O" || alpha =="U"){
//   print("Its a Vowel");
  
// }else{
//   print("Not a Vowel");
// }
  
  
// }
// _______________________________________________________________________________

// Q.5  Write a program to read temperature in centigrade and display a suitable message according to temperature:
// You have num variable temperature = 42;
// Now print the message according to temperature:
// temp < 0 then Freezing weather
// temp 0-10 then Very Cold weather
// temp 10-20 then Cold weather
// temp 20-30 then Normal in Temp
// temp 30-40 then Its Hot
// temp >=40 then Its Very Hot
// void main(){
// String  temp = "500F";
// bool tempreature = temp.contains("F");
// if (tempreature == true){
//   int numb = int.parse(temp.split("F")[0]);
//   print("In Fahrenheit ${numb}");
//   num Centigrade = (numb - 32)*(5/9);
//   print("In Centigrade ${Centigrade}"); 
//   if (Centigrade < 0){
//     print("Freezing weather");
//   }else if (Centigrade>=0 && Centigrade<=0){
//      print(" Very Cold Wether");
    
//   }else if(Centigrade>=20 && Centigrade<=30){
//     print("Cold Wether");
    
//   }else if(Centigrade>=30 && Centigrade<=40){
//     print("Its Hot");
    
//   }else{
//     print("Very Hot");
//   }
     
  
  
 
    
//   }
 

  
// }

// ________________________________________________________________________________-

// Q.7: Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above             @2.00;

// Test Data :
// id: 1001
// name: James
// units: 800
// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00

// CODE:
// void main(){
//   int CustomerID = 1100;
//   String CustomerName = "ASRA";
//   double unitConsumed = 600;
  
  
//   print("Customer ID : ${CustomerID}");
//   print("Customer Name : ${CustomerName}");
//   print("Units : $unitConsumed");
//   if (unitConsumed <= 199){
//     print("Amount Charges @Rs. 1.20 per unit : ${unitConsumed * 1.20}");
//     print("Net Bill Amount : ${unitConsumed * 1.20} ");
    
//   }else if(unitConsumed>=200 && unitConsumed < 400){
//     print("Amount Charges @Rs. 1.20 per unit : ${unitConsumed * 1.50}");
//     print("Net Bill Amount : ${unitConsumed * 1.50} ");
    
    
    
//   }else if(unitConsumed>=400 && unitConsumed < 600){
//     print("Amount Charges @Rs. 1.20 per unit : ${unitConsumed * 1.80}");
//     print("Net Bill Amount : ${unitConsumed * 1.80} ");
    
// }else{
//     print("Amount Charges @Rs. 1.20 per unit : ${unitConsumed * 2.00}");
//     print("Net Bill Amount : ${unitConsumed * 2.00} ");
    
//   }
// }


// Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
// i.e: Percentage should be rounded upto 2 decimal places only.
// CODE:
// void main(){
//   String Name = "Asra Aijaz";
//   int Rollno =123 ;
//   String Clas =" Bachelors" ;
  
//   num Calculus = 87;
//   num Programming = 98.4;
//   num English =67;
//   num DataBase =76.5;
//   num Os = 90;
  
//   int ObtainedMarks = 500;
//   num TotalMarks = Calculus+Programming+English+DataBase+Os;
  
//   num Percent1 = (TotalMarks/ObtainedMarks)*100;
// //   print(Percent.runtimeType);
//   String Percent2 = Percent1.toStringAsFixed(2);
// //   print(Percentage);
//   num Percentage = num.parse(Percent2);
//   print(Percentage.runtimeType);

  
  
//   //__________________________________________
//   print("Name : ${Name}");
//   print("Roll No : ${Rollno}");
//   print("Class : ${Clas}");
  
  
  
  
//   if(Percentage >=80){
//     print("Congratulations ${Name}! You are PASS, Your percentage is ${Percentage} and Grade is A+");
//   }
//   else if(Percentage >= 70){
    
//     print("Congratulations ${Name}! You are PASS, Your percentage is ${Percentage} and Grade is A");
//   }
//   else if (Percentage >= 60){
    
//     print("Congratulations ${Name}! You are PASS, Your percentage is ${Percentage} and Grade is B");
//   }
//   else if (Percentage >= 50){
//     print("Congratulations ${Name}! You are PASS, Your percentage is ${Percentage} and Grade is C");
    
//   }else{
//     print("Sorry ${Name}! You are FAIL");
    
//   }

// }
// Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.
// CODE:
// void main(){
// int numb1 = 45;
// if (numb1%2==0){
//   if (numb1%5==0){
//     print("${numb1} is EVEN And Divisible by 5");
//   }else{
//     print("${numb1} is EVEN But NOT Divisible by 5");  
//   }
  
// }else if(numb1%2 != 0){
//   if(numb1%7==0){
//     print("${numb1} is ODD And Divisible by 7");
//   }else{
//     print("${numb1} is ODD but NOT Divisible by 7");
//   }
  
// }

// }

// Q10: Write a program that takes three numbers from the user and prints the greatest number & lowest number.
// CODE: 
// void main(){
// int numb1= 300;
// int numb2 =2000;
// int numb3 = 40;
// if (numb1 > numb2){
//   if(numb1 > numb3){
//     print("${numb1} is the greatest");
//   }else{
//     print("${numb3} is the greatest");
     
//   }
//   }else if(numb2>numb1){
//     if(numb2> numb3){
//       print("${numb2} is the greatest");
//     }else{
//     print("${numb2} is the greatest");
     
//   }
// }else{
//   print("${numb3} is the greatest");
// }
// }


// Q11: Write a program to calculate root of any number.
// i.e: √y = y½
// CODE:
// import 'dart:math';
// void main(){
//   num num1 = 3;
//   double sqrt = 1/2;
//   num calSqrt = pow(num1,sqrt);
//   print(calSqrt);
  

// }
// Q12: Write a program to convert Celsius  to Fahrenheit   .
// i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32
// CODE:
// void main(){
// String  temp = "500F";
// bool tempreature = temp.contains("F");
// if (tempreature == true){
//   int numb = int.parse(temp.split("F")[0]);
//   print("In Fahrenheit ${numb} F");
//   num Centigrade = (numb - 32)*(5/9);
//   print("In Centigrade ${Centigrade} C" );


// }
// }


