import 'package:flutter/material.dart';
import 'package:new_project/android&ios.dart';
import 'package:new_project/expand.dart';
import 'package:new_project/gride1.dart';
import 'package:new_project/json.dart';
import 'package:new_project/notification1.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(appBar: AppBar(
      title: Text("Notification"),
    ),
    body: Notification1(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: Gride1(),
      // home: Expand(),
      // home: Android_Ios(),
      // home: Json(),
      home: Notification1(),
    );
  }
}
