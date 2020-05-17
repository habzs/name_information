import 'package:flutter/material.dart';
import 'package:name_information/home.dart';
import 'package:name_information/user_info.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/user_info': (context) => CharaInfo(),
    },
  ));
}
