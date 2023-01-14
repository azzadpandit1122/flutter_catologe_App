import 'package:flutter/material.dart';
import 'package:test_project/home_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Azzad is String";

    return  MaterialApp(
      home: HomePage(),
    );
  }
}
