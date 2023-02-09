import 'package:flutter/material.dart';

import 'screen/Addmenu.dart';
import 'screen/Addname.dart';
import 'screen/Addproduct.dart';
import 'screen/viewemployee.dart';
import 'screen/viewproduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Addmenu(),
    );
  }
}

