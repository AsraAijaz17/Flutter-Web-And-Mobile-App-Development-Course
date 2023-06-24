void main() {
//----list stores multiple data types----
//    can use var or List keyword to create list
// some builtin methods of list,
//.first , .last , .elementAt() ,

  // String name = "Asra";
  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // print(studentNames);
  // print(studentNames[0]);
  // print(studentNames[1]);
  // print(studentNames[2]);
  // print(studentNames.elementAt(2));
  // print(studentNames.length);
  // print(studentNames.first); //print first element
  // print(studentNames.last); //print last element

  // int listkilen = studentNames.length;
  // print(listkilen);
  // print(studentNames[listkilen - 2]);

//practice___________________________________________________

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // print(studentNames[studentNames.length - 2]);
  // print(studentNames.elementAt(0));

  // String name = "bilal";
  // name = "ALI";
  // print(name);

  //-------------------------------------------

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // // studentNames[0] = "abc";
  // studentNames.replaceRange(3, 4, ["ab"]);
  // // Or
  // studentNames
  //     .replaceRange(studentNames.length - 1, studentNames.length, ["Fozia"]);
  // print(studentNames);

//------------------------------------------
//  sort
  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // studentNames.sort();
  // print(studentNames);

  // List<String> studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // print(studentNames.isEmpty);

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // studentNames.clear();
  // print(studentNames);

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // studentNames.add("bye");
  // studentNames.addAll(["as", "asddf"]);
  // print(studentNames);

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // var abc = studentNames.reversed;
  // print(studentNames);

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // var abc = studentNames.reversed;
  // print List(studentNames);

//   List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
//   studentNames.sort();
//   print(studentNames);
//   print(studentNames.reversed);

//______________________________________

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // var abc = List.of(studentNames.reversed);
  // print(abc);

  //___________________________________________________

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // studentNames.remove("Bilal");
  // print(studentNames);

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  // studentNames.removeAt(1);
  // print(studentNames);

  // List studentNames = ["Bilal", "owais", "Sabeel", "Ahmed"];
  //in reg

  //_________________________________________

  // Dictionaryy
  List students = [
    {"name": "Bilal", "rollno": "123", "marks": 100},
    {"name": "Asra", "rollno": "12", "marks": 100}
  ];

  print((students[0]["name"]));

  Map StudentRecord = {"name": "Bilal", "rollno": "123", "marks": 100};
  print(StudentRecord["name"]);
  print(StudentRecord.keys);
  print(StudentRecord.values);

  //maps ki keys string hon only
  //dynamic means koi bh type , typ rsrtct krdi
  // . length , isEmpty , isNotEmpty , agar key exist krti hgi to update wrna add krdega
  //putIfAbsent --> ye update nh kryga ye add kryga ye key integer form m hi lega
  // Map<String, dynamic> StudentRecord2 = {
  //   "name": "Bilal",
  //   "rollno": "123",
  //   "marks": 100
  // };
}
