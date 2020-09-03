import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: Homepage(), // home props of MaterialApp is running a
    theme: ThemeData(primarySwatch: Colors.teal),
  )); // takes an App (Widget App)
}

class Homepage extends StatelessWidget {
  @override // Overriden the "build" method.
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hello Flutter2")),
        body: Container(
          width: 300,
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
              ),
            ],
          ),
        ));
  }
}

// PROPERTIES of Coloumn()
// .start .end .stretch
//1. mainAxisAlignment = vertical crossAxis = <--horizontal-->
