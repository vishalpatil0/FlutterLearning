import 'dart:ffi';

void main(List<String> args) {
  int? a;
  BigInt b = BigInt.parse('1122344555');

  double d = 23.5;

  bool flag = true;

  num n = 23;
  n = 45.5;

  var v = n;

  // v = "vihsal"; gives error as var is now work as int

// dynamic data type (with no initial value at the time of declaration)
  var n1;
  n1 = "D";
  n1 = 45;
  //Not getting warning here, didn't initilize it at the time of declrartion.



  print(b);
}