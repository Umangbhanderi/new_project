import 'package:flutter/material.dart';

class Gride1 extends StatefulWidget {
  const Gride1({super.key});

  @override
  State<Gride1> createState() => _Gride1State();
}

class _Gride1State extends State<Gride1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gride view"),
      ),
      body: GridView.count(crossAxisCount: 2,
      children: [
        Container(
          color: Colors.red,
          child: Text("1"),
        ),
        Container(
          color: Colors.blue,
          child: Text("2"),
        ),
        Container(
          color: Colors.green,
          child: Text("3"),
        ),
        Container(
          color: Colors.red,
          child: Text("4"),
        ),
        Container(
          color: Colors.blue,
          child: Text("5"),
        ),
        Container(
          color: Colors.green,
          child: Text("6"),
        ),
      ],
      ),
    );
    }
}