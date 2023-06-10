void main(List<String> args) {

  final String name;
  name = "vishal";
  // name = "patil";  can't override

  // final var age; not allowed
   
  const String surname = "patil";
  // const String bikeName; with const variable must initilize at declaration.


  dynamic age = "34";  //can assign any value at any time.
  age = 24;
  age = "24";
  dynamic grade;
  grade = 99;
  grade = "A+";

  final List<String> names = [
    "vishal",
    "patil"
  ];

  names.add("Om");

  for(var n in names) {
    print(n);
  }

  /* const List<String> names = [
    "vishal",
    "patil"
  ];
  names.add("Prakash"); //trigger the exception as the list become unmodifiable with const 
 */


}