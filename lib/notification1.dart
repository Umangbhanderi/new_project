import 'package:flutter/material.dart';

class Notification1 extends StatefulWidget {
  const Notification1({super.key});

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  void showSnackbar() {
    final snackBar = SnackBar(
      content: Text("Hi Snackbar Here"),
      action: SnackBarAction(label: "ok", onPressed: () {}),
    );
    // Scaffold.of(context).sh
  }

  void showButtom() {
    showModalBottomSheet(context: context, builder: (builder){
      return Container(
        height: 100.0,
        color: Colors.deepOrange,
        child: Center(child: Text("Bottom sheet Model")),
      );
    });
  }

  Future<Null> showSimpleDialog() async{
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Simple Dialog"),
        content: Text("The Message You Want"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Done"))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                child: Text("Snackbar"),
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.green,
                onPressed: () {
                  showSnackbar();
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                child: Text("Model Buttom"),
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.green,
                onPressed: () {
                  showButtom();
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                child: Text("Simple dialog"),
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.green,
                onPressed: () {
                  showSimpleDialog();
                }),
          )
        ],
      ),
    );
  }
}
