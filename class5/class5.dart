void main() {
  //increment, decrement
  // var abc = 0;
  // abc = abc + 1;
  // // or
  // abc = ++abc;
  // print(abc);

  //pehle increment phr store == Preincrement
  //pehle store phr incremenet == PostIncrement

  // var abc = 0;
  // var a = abc++;
  // print("abc value $abc");
  // print("a value $a");

  // var abc = 0;
  // var a = abc--;
  // print("abc value $abc");
  // print("a value $a");

  //Example
// abc =4
// a = 5
// c= 9
// d= (5 - 10) + 4*3 // -5 + 12  = 7

// q = 0 * 4
// n= 0 + -1*
//--------------------------------------------------------------

//LOOPS
//types 4
//while ,do while ,for(data pe chlta h) , for in range

//iterations , step by step process
//yahan range

  // for (var i = 0; i <= 10; i++) {
  //   print(i);
  // }

  //Table
  int number = 5;
  for (var a = 1; a <= 10; a++) {
    var mul = a * number;
    print("$number x $a = $mul");
    // print("$number x $a = ${number * a}");
  }

//---------------------------------------------------------------------
  // List studentNames = ["Bilal", "Ali ", "Owais", "bye"];
  // for (var a = 0; a < studentNames.length; a++) {
  //   print("$a : ${studentNames[a]}");
  // }

  //--------------------------------------------------------------------

  //For in
  //ye data k andr chlta h loop

  // List studentNames = ["Bilal", "Ali ", "Owais", "bye"];
  // for (var i in studentNames) {
  //   print(i);
  // }

  // var abc = "Bilal";
  // abc = 12;

  //ab var ki jaga dynamic lkn ye achi prctce nh
  //dynamic ham lst wgra m use hta h

  //using For in

  List numbers = [3, 5, 6, 1, 9, 10, 4];
  List evenNumbers = [];
  List oddNumbers = [];
  for (var i in numbers) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    } else {
      oddNumbers.add(i);
    }
  }

  print("EvenList: $evenNumbers");
  print("OddList $oddNumbers");

  //---------------------------------------------
  //Using For Loop
  List numbers2 = [3, 5, 6, 1, 9, 10, 4];
  List EVENNUMBERS = [];
  List ODDNUMBERS = [];

  for (int ii = 0; ii < numbers2.length; ii++) {
    if (ii % 2 == 0) {
      EVENNUMBERS.add(ii);
    } else {
      ODDNUMBERS.add(ii);
    }
  }
  print("Even Numbers List:$ODDNUMBERS");
  print("Odd Numbers List $EVENNUMBERS");

  //---------------------------------------------------------
  //using For Each
  List numbers3 = [3, 5, 6, 1, 9, 10, 4];
  List EVENNUMBERS1 = [];
  List ODDNUMBERS1 = [];

  numbers3.forEach((element) {
    if (element % 2 == 0) {
      EVENNUMBERS1.add(element);
    } else {
      ODDNUMBERS1.add(element);
    }
  });

  print(" EVEN NUMBERS LIST :$EVENNUMBERS1");
  print("ODD NUMBERS LIST $ODDNUMBERS1");
  //-------------------------------------------------------------
}
