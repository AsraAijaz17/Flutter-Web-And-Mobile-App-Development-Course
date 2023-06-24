void main() {
//   var list1 = [101, 1022, 310, 453, 523];
//   List list2 = ["Asra", "Aijaz"];

//   print(list1);
//   print(list2);
//   print(list1[0]);

//   var indexValue = list1.elementAt(2);
//   print(indexValue);

//   var ListLength = list1.length;
//   print(ListLength);
//   var ListLength2 = list2.length;
//   print(ListLength2);

//   var firstElem = list1.first;
//   var lastElem = list2.last;
//   print(firstElem);
//   print(lastElem);

//   //2nd last elem
//   var secondLastValue = list1.length - 2;
//   print(list1[secondLastValue]);
//   //or
//   print(list1[list1.length - 2]);

//   //--------------------------------------

//   // Updating List, Replacig Value

//   List studNames1 = ["Shabbir", "Hussain ", "Asra", "Aijaz"];
//   studNames1[1] = "Khalid";
//   print(studNames1);

//   List studNames2 = ["Ali", "Hamza ", "Abbas", "Aijaz", "Ahmed"];
//   studNames2.replaceRange(0, 1, ["a"]);
//   print(studNames2);

// //replacing last elem
//   List Rollno = [901, 902, 903, 904, 905];
//   Rollno.replaceRange(4, 5, ["replaced"]);
//   print(Rollno);

//   //Or

//   List Rollno2 = [901, 902, 903, 904, 905];
//   Rollno2.replaceRange(Rollno.length - 1, Rollno2.length, ["R", "E"]);
//   print(Rollno2);

// //-------------------------------

// //  SORT

//   List integerList = [5, 3, 5, 3, 6, 8, 4, 4];
//   integerList.sort();
//   print(integerList);

//   //Or

//   List strList = ["Pf", "DLD ", "Mvc", "DSA"];
//   strList.sort();
//   print(strList);

//----------------------------------

  List alst = [];

  // if (alst.isEmpty) {
  //   print("List is empty");
  // }

  //or

  alst.add(1);
  alst.add(["Asra", "Aijaz"]);
  print(alst);

  alst.clear();
  print(alst);

  bool TF = alst.isEmpty;
  if (TF == true) {
    print("List is empty");
  } else {
    print("not empty");
  }
}
