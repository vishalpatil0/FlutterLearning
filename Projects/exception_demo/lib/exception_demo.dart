void main(List<String> args) {
  String? msg;
  try {
    msg = something(23);
  } catch (e) {
    print(e);
  }
  //Null aware operator/ if the variable is null then use the default value.
  print(msg ?? "defautl value");
}

String something(int n) {
  if (n > 10) {
    throw "exception got thrown";
  }
  return "vishal";
}
