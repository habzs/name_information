class NameFiller {
  String name;
  String gender;
  String collated;
  int age;

  NameFiller({this.name, this.gender, this.age});

  fillNames() {
    collated = "Name: " + name + ", Age: " + "age" + ", Gender: " + "gender";
    print(collated);
  }
}
