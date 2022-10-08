import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Android_Ios extends StatefulWidget {
  const Android_Ios({super.key});

  @override
  State<Android_Ios> createState() => _Android_IosState();
}

class _Android_IosState extends State<Android_Ios> {
  androidLayout() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Android"),
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
    );
  }

  iosLayout() {
    return CupertinoButton(
        child: Text("IOS"), color: Colors.red, onPressed: () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Android and IOS"),
      ),
      body: Theme.of(context).platform == TargetPlatform.android
          ? androidLayout()
          : iosLayout(),
    );
  }
}
