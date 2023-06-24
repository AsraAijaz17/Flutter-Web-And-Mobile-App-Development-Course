void main() {
  //Ques1
  List names = ["Muskan", "Nazia", "Alina", "Noureen", "Samreen"];
  print(names);

  //---------------------------------------------------------------
  //---------------------------------------------------------------

  //Ques2
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

  //---------------------------------------------------------------
  //---------------------------------------------------------------

  //Ques3
  List Days = ["Mon", "Tues", "Wednes", "Thurs", "Fri", "Sat", "Sun"];
  Days.removeLast();
  Days.removeLast();
  Days.removeLast();
  Days.removeLast();
  Days.removeAt(Days.length - 1);
  Days.removeAt(Days.length - 1);
  Days.removeAt(Days.length - 1);

  print(Days);

  //---------------------------------------------------------------
  //---------------------------------------------------------------

  //Ques4

  List Numbers = [50, 76, 45, 20, 9, 34];
  Numbers.sort();
  int smallestNumber = Numbers.first;
  int LargestNumber = Numbers.last;
  print("$smallestNumber: is the smallest number");
  print("$LargestNumber: is the largest number");

  //-----------------------------------------------------------------
  //-----------------------------------------------------------------

  //Ques5
  Map info = {
    "Asra": 1234,
    "Areeba": 56768,
    "Sara": 7657586,
    "Alia": 57657,
    "Alishba": 678678
  };
  var len4Values = info.keys.where((k) => k.length == 4);
  print(len4Values);

//-----------------------------------------------------------------
//-----------------------------------------------------------------

//Ques6

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

//-----------------------------------------------------------------
//-----------------------------------------------------------------

//Ques7
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

//--------------------------------------------------------------------
//--------------------------------------------------------------------

//Ques8
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
//--------------------------------------------------------------------

//Ques9
  List integerss = [344, 546, 43, 534, 3453, 32];
  integerss.sort();
  int maxValues = integerss.last;
  print("$maxValues: is the max value");

  //---------------------------------------------------------------------
  //---------------------------------------------------------------------

  //Ques10
  List<String> alpha = ["a", "b", "b", "c", "a"];
  dynamic uniqueAlpha = alpha.toSet();
  dynamic uniqueList = uniqueAlpha.toList();
  print(uniqueList);

  //---------------------------------------------------------------------
  //---------------------------------------------------------------------

  //Ques11
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

  //-------------------------------------------------------------------
  //-------------------------------------------------------------------
}
