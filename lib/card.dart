import 'package:flutter/material.dart';

import 'package:hello_flutter/pages/home_pages.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
//runApp(MyApp) -> extends stle -> returns Material
