import 'dart:io';

void main() {
  // print("enter name");

  // int.parse(stdin.readLineSync()!);
  // var a = stdin.readLineSync();
  // print(a);
  // int count = 0;
  // while (count > 5) {
  //   print(count);
  //   count++;
  // }

  // //do while pehle statmnt chlyga phr cond check hga
  // //cond start me false hgi lkn ak br to chlyga phir bh
  // do {
  //   print("Hello");
  // } while (count > 5);

  //snake game example

  //------------------------------------------------------------------------------
  //------------------------------------------------------------------------------

  //Nested For loop

  // for (var i = 0; i < 5; i++) {
  //   print("Outer Loop i : $i");

  //   for (var j = 0; j < 3; j++) {
  //     print(" $i : $j");
  //   }

  //   print("_____________________");
  // }

  //-----------------------------------------------------------------------

  // for (var i = 1; i <= 5; i++) {
  //   print("Table of $i");
  //   print("---------------------");

  //   for (var j = 1; j <= 10; j++) {
  //     print("$i x $j = ${i * j}");
  //   }

  //   print("_____________________");
  // }

  //-------------------------------------------------------------

  // for (var a = 1; a < 5; a++) {
  //   print("outer loop : $a");

  //   for (var b = 1; b < 3; b++) {
  //     print("Inner loop : $b");
  //   }
  //   print("----------------------");
  // }

  //------------------------------------------------------------------

  // print("Enter outer loop Range");
  // int outer = int.parse(stdin.readLineSync()!);
  // print("Enter inner Loop range");
  // int inner = int.parse(stdin.readLineSync()!);

  // for (var o = 1; o <= outer; o++) {
  //   print(o);
  //   for (var ii = 1; ii <= inner; ii++) {
  //     print(ii);
  //   }
  // }

  //---------------------------------------------------------------

//   stdout.write("object");
//   stdout.write("object");
//   print("Object");
//   print("obj");
// }

//---------------------------------------

//Pattern

  // for (var y = 1; y < 4; y++) {
  //   for (var z = 1; z <= y; z++) {
  //     stdout.write(z);
  //   }
  //   print("");
  // }

  //*
  //**
  //***
  //****

  //1
  //22
  //333
  //4444

  //1
  //12
  //123
  //1234

  //--------------------------------------------------------

  // for (var y = 4; y > 1; y++) {
  //   for (var z = 1; z >= y; z++) {
  //     stdout.write(z);
  //   }
  //   print("");
  // }

  //****
  //***
  //**
  //*

  //----------------------------------------------------------------

  //Functions

//Func Calling
  // studentMarkSheet();

  // var abc = studentMarkSheet();
  // print(abc); //returning null

  // var cde = studentMarkSheet();
  // print(cde);

  //--------------------------------------------------------------

  // sumof2Num(5, 5);
  // sumof2Num(10, 10);

  //func5
  List<int> numberss = [4, 3, 5];
  for (var i in numberss) {
    table(i);
  }
}

//A Function
// studentMarkSheet() {
//   String name = "Asra";
//   num percentage = 76;
//   if (percentage > 50) {
//     print("$name pass");
//   } else {
//     print("Fail");
//   }

//   //Func 2 types
//   // Void and return

//   return "Hello";
// }

//Func 2

sumOfTwoNum() {
  num num1 = 2;
  num num2 = 3;
  num result = num1 + num2;
  return result;
}

//Void func s pehle means wo kuch return nh kryga
//agr koi dta type lgadi to return krna lazmi h r return bh string type hi hni chhaie
//types define krni hoti hai ta k bdme msla na aye

//Parameters
//Func3
// num sumof2Num(int numb1, int numb2) {
//   num resultt = numb1 + numb2;
//   return resultt;
// }

//func 4
sumof2Nums({required name, percentage, section = "A"}) {
  //ab isme arg agy peeche pass krskte
  //default value jsme pass uski change bqi sbki same
}

//func5
table(int numberr) {
  for (var iii = 1; iii <= 10;iii++) {
    print(numberr * 1);
  }
}
