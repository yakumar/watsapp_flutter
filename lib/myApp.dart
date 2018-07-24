import 'package:flutter/material.dart';

import 'src/home.dart';

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(

        primaryColor: Color.fromRGBO(38, 92, 83, 1.0),
        accentColor: Color.fromRGBO(91, 197, 77, 0.0),
      ),
      home: new MyHomePage(),
    );
  }
}
