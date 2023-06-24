void main() {
  //Ques1
  //Create a list of names and print all names using list.

  List names = ["Muskan", "Nazia", "Alina", "Noureen", "Samreen"];
  print(names);

  //------------------------------------------------------------------------
  //Ques2
  //Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

  List days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");

  print(days);

  //or
  // days.addAll(["Mon", "Tues", "Wednes", "Thurs", "Fri", "Sat", "Sun"]);
  // print(days);

  //-------------------------------------------------------------------

  //Ques3
  //Create a list of Days and remove one by one from the end of list.

  List Days = ["Mon", "Tues", "Wednes", "Thurs", "Fri", "Sat", "Sun"];
  Days.removeLast();
  Days.removeLast();
  Days.removeLast();
  Days.removeLast();
  Days.removeAt(Days.length - 1);
  Days.removeAt(Days.length - 1);
  Days.removeAt(Days.length - 1);

  print(Days);

  //-----------------------------------------------------------------------------
  //Ques4
  //Create a list of numbers & write a program to get the smallest & greatest number from a list.

  List Numbers = [50, 76, 45, 20, 9, 34];
  Numbers.sort();
  int smallestNumber = Numbers.first;
  int LargestNumber = Numbers.last;
  print("$smallestNumber: is the smallest number");
  print("$LargestNumber: is the largest number");

  //--------------------------------------------------------------------------------
  //Ques5
  //Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

  Map info = {
    "Asra": 1234,
    "Areeba": 56768,
    "Sara": 7657586,
    "Alia": 57657,
    "Alishba": 678678
  };
  var len4Values = info.keys.where((k) => k.length == 4);
  print(len4Values);

//------------------------------------------------------------------------------------

//Ques6
//Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency

  Map World = {
    "Pakistan": {
      "Language": "Urdu",
      "Currency": "Rupess",
      "Capital City": "Islamabad"
    },
    "Saudia Arabia": {
      "Language": "Arabic",
      "Currency": "Riyal",
      "Capital City": "Riyadh"
    },
    "China": {
      "Language": "Chinese",
      "Currency": "Chinese yuan renminbi",
      "Capital City": "Beijing"
    }
  };

  // print(World);

  // print(World["Pakistan"]);
  // print(World["Saudia Arabia"]);
  // print(World["China"]);

  print(World["Pakistan"]["Language"]);
  print(World["Pakistan"]["Currency"]);

//------------------------------------------------------------------------------------
//Ques7
//Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };
// Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  if (expenses.containsKey("fri")) {
    expenses["fri"] = 5000;
  } else {
    expenses.addAll({"fri": 5000});
  }
  print(expenses);

  //2nd solution

  // Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0,
  //   'tue': 3234.0,
  // };
  // expenses["fri"] = 5000;
  // print(expenses);

//-----------------------------------------------------------------------------------
//Ques8
// remove all false values from below list by using removeWhere or retainWhere property.

// List<Map<String, bool>> usersEligibility = [
// {'name': 'John', 'eligible': true},
// {'name': 'Alice', 'eligible': false},
// {'name': 'Mike', 'eligible': true},
// {'name': 'Sarah', 'eligible': true},
// {'name': 'Tom', 'eligible': false},
// ];

  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];
  // print(usersEligibility[0]["name"]);

  usersEligibility.removeWhere((e) => e['eligible'] == false);
  print(usersEligibility);

//--------------------------------------------------------------------
//Ques9
// Given a list of integers, write a dart code that returns the maximum value from the list.

  List integerss = [344, 546, 43, 534, 3453, 32];
  integerss.sort();
  int maxValues = integerss.last;
  print("$maxValues: is the max value");

  //----------------------------------------------------------------------------------
  //Ques10
  //: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.

  List<String> alpha = ["a", "b", "b", "c", "a"];
  dynamic uniqueAlpha = alpha.toSet();
  dynamic uniqueList = uniqueAlpha.toList();
  print(uniqueList);

  //-------------------------------------------------------------------------------
  //Ques11
  //Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.

  List integerList = [89, 29, 39, 45, 90, 6, 7, 8, 9, 10];
  List newList = [];
  int num = 2;
  for (int i = 0; i < num; i++) {
    newList.add(integerList[i]);
  }
  print(integerList);
  print(newList);

  //another way
  List integerList2 = ["a", "b", "c", "d", "e", "f"];
  int numb = 2;
  List newList2 = [];

  integerList2.take(numb).forEach((element) {
    newList2.add(element);
  });

  print(newList2);

  //---------------------------------------------------------------------------------
  //Ques12
  //: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.

  List oldList = ["ab", "cd", "ef", "ghi"];
  var newlist = List.of(oldList.reversed);
  print(oldList);
  print(newlist);

  //-------------------------------------------------------------------------------
  //Ques13
  // Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.

  List ints = [1, 2, 3, 1, 2, 3, 4, 5, 6];
  var Fltered = ints.where((a) => ints.indexOf(a) == ints.lastIndexOf(a));
  List FilteredElements = Fltered.toList();

  print(FilteredElements);

  //-----------------------------------------------------------------------------------
  //Ques14
  //Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.

  List randomNumbers = [56, 887, 45, 23, 89, 23, 2];
  List sortedList = [];
  randomNumbers.forEach((element) {
    sortedList.add(element);
  });

  sortedList.sort();
  print(randomNumbers);
  print(sortedList);

//-----------------------------------------------------------------------------------
  //Ques15
  //Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.

  List numbers = [23, -45, 31, -45, 89, -34, 23];
  var PosNum = numbers.where((element) => element > 0);
  List ListOfPostiveNumbers = PosNum.toList();
  print(ListOfPostiveNumbers);

  //---------------------------------------------------------------------------------
  //Ques16
  //Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.

  List Numberss = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var FilteringOut = Numberss.where((element) => element % 2 == 0);
  List EvenNumbers = FilteringOut.toList();
  print(EvenNumbers);

  //---------------------------------------------------------------------------------
  //Ques17
  //Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.

  List numbListt = [2, 3, 4, 5, 6];
  List squaredNumbers = numbListt.map((n) => n * n).toList();
  print(squaredNumbers);

  //-----------------------------------------------------------------------------------
  //Ques18
  //Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".

  Map Person = {"Name": "John", "Age": 25, "isStudent": true};
  if (Person["Age"] > 18 && Person["isStudent"] == true) {
    print("Eligible");
  } else {
    print("Not Eligible");
  }

  //----------------------------------------------------------------------------------
  //Ques19
  //Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".

  Map ProductInfo = {"Name": "Lays", "Price": "100Rs", "Quantity": 2};
  if (ProductInfo["Quantity"] > 0) {
    print(" This Product is in stock");
  } else {
    print("This Product is Out Of Stock");
  }

  //--------------------------------------------------------------------------------
  //Ques20
  //Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".

  Map Car = {"Brand": "Toyota", "Colour": "Red", "isSedan": true};
  if (Car["Colour"] == "Red" && Car["isSedan"] == true) {
    print("Match");
  } else {
    print("No Match");
  }

//-----------------------------------------------------------------------------------
//Ques21
// Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".

  Map Person2 = {"Name": "Shabbir", "isAdmin": true, "isActive": false};
  if (Person2["isAdmin"] == true && Person2["isActive"] == true) {
    print("Active admin");
  } else {
    print("Not an active admin");
  }

  //----------------------------------------------------------------------
  //Ques22
  //Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".

  Map ShoppingCart = {"Apple": 4, "Bananas": 7, "Orange": 2};
  String Product = "Orange";
  if (ShoppingCart.containsKey(Product)) {
    print("$Product is present in the Cart");
  } else {
    print("$Product is not in the cart");
  }

  //---------------------------------------------------------------------------
}
