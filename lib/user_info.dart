import 'package:flutter/material.dart';
import 'names.dart';

class CharaInfo extends StatefulWidget {
  @override
  _CharaInfoState createState() => _CharaInfoState();
}

class _CharaInfoState extends State<CharaInfo> {
  @override
  Widget build(BuildContext context) {
    final NameFiller pushedInformation =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Character Information"),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "NAME",
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
            SizedBox(height: 2.0),
            Text(
              "${pushedInformation.name}",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              "AGE",
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
            SizedBox(height: 2.0),
            Text(
              "${pushedInformation.age}",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "GENDER",
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
            SizedBox(height: 2.0),
            Text(
              "${pushedInformation.gender}",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
