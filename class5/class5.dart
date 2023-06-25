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
  List studentNames = ["Bilal", "Ali ", "Owais", "bye"];
  for (var a = 0; a < studentNames.length; a++) {
    print(studentNames[a]);
  }

 //--------------------------------------------------------------------
}
