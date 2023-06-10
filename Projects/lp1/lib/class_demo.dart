void main() {
    var demo = Demo(12, "vishal");
    print(demo.age);
    demo.setName("patil");
    print(demo.name);
}

class Demo {
  late int age;
  late var name;
  Demo(this.age, var this.name);

  int getAge() {
    return age;
  }

  setName(String name) {
    this.name = name;
  }

}