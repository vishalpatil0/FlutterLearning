import 'dart:io';

void main(List<String> args) {

  print("hello everyone\n");

  stdout.write("ok enter some value --> \n");
   
  String? str = stdin.readLineSync();

  print("name --> "+str!);
}
