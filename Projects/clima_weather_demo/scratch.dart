import 'dart:io';

void main(List<String> args) async {
  fun1();
  String? result = await fun2();
  fun3(result);
  fun4();
}

void fun1() {
  print("Function 1");
}

Future<String?> fun2() async {
  Duration duration = Duration(seconds: 3);
  String? result;
  await Future.delayed(duration, () {
    result = "Vishal ";
    sleep(duration);
    print("Function 2");
  });
  return result;
}

void fun3(String? result) {
  print("Function 3 --> result --> $result");
}

void fun4() {
  print("Function 4");
}
