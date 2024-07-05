import 'package:flutter/material.dart';
import 'package:latihan_stack/login.dart';
import 'package:latihan_stack/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      home: LoginPage(),
    );
  }
}
