import 'package:flutter/material.dart';
import 'user_info.dart';
import 'names.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NameFiller personOne = NameFiller(name: "Owen", age: 23, gender: "Male");
  NameFiller personTwo = NameFiller(name: "Susan", age: 11, gender: "Female");

  List<NameFiller> humans = [
    NameFiller(name: "Owen", age: 23, gender: "Male"),
    NameFiller(name: "Susan", age: 11, gender: "Female"),
    NameFiller(name: "Shaza", age: 21, gender: "Female"),
    NameFiller(name: "TingZhen", age: 21, gender: "Female"),
    NameFiller(name: "Olivia", age: 26, gender: "Female"),
    NameFiller(name: "David", age: 53, gender: "Male"),
    NameFiller(name: "Adam", age: 43, gender: "Male"),
    NameFiller(name: "Bob", age: 32, gender: "Male"),
    NameFiller(name: "Jenny", age: 12, gender: "Female"),
    NameFiller(name: "Rodney", age: 42, gender: "Male"),
    NameFiller(name: "Sam", age: 55, gender: "Male"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Name List"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: humans.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text("${humans[index].name}"),
                  subtitle:
                      Text("${humans[index].age}, ${humans[index].gender}"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CharaInfo(),
                            settings: RouteSettings(arguments: humans[index])));
                  },
                  onLongPress: () {
                    print("Long tapped: ${humans[index].name}");
                  },
                ),
              );
            },
          ),
        )
        //Text("$names.name"),
        );
  }
}
