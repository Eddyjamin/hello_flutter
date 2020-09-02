import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: Homepage(), // home props of MaterialApp is running a
    theme: ThemeData(primarySwatch: Colors.teal),
  )); // takes an App (Widget App)
}

// 1. Containers() are like boxes
// 2. Containers are similar to <div> in HTML
// 3. Attributes are properties: AndValues
// 4.
// 5. The lightbulb icon is for WRAPPING the Container() within the
// materiaAPP [Wrap With (center, column, widget, padding, row...)]

// 6. padding: const EdgeInset(.all(+), .only(LRTB), .symmetric(v|h))
// 7. alignment: Alignment.center/tL/tR/bL/bR Postions the child: prop.
// 8. decoration: BoxDecoration() MOST IMPORTANT prop. for Container()
// 9. shape: BoxShape.circle + clipBehaviour: ClipBehaviour.antiAlias
class Homepage extends StatelessWidget {
  @override // Overriden the "build" method.
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hello Flutter2")),
        body: Center(
            child: Container(
          width: 150,
          height: 150,
          //color: Colors.red,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
              )
            ],
            gradient: LinearGradient(colors: [
              Colors.yellow,
              Colors.pink,
            ]),
          ),
          child: Text(
            "Hello Flutter2",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )));
  }
}
// 1. The 'style' prop. is the most important props for Text()
// 2. maxLine: sets the max. number of characters in the text
// 7. All Container() has a 'child' property  (home: or body
