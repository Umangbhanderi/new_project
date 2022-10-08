import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  const Expand({super.key});

  @override
  State<Expand> createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expand"),
      ),
      body: Column(
        children: [
          Row(
            textDirection: TextDirection.ltr,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 200,
                    color: Colors.blue,
                  )),
              Expanded(
                flex: 1,
                  child: Container(
                height: 200,
                color: Colors.green,
              )),
            ],
          ),
          Row(
            textDirection: TextDirection.ltr,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  )),
              Expanded(
                flex: 7,
                  child: Container(
                height: 100,
                color: Colors.yellow,
              )),
            ],
          )
        ],
      ),
    );
  }
}
