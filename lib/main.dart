import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webservice/ui/home.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}