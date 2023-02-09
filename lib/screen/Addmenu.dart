import 'package:flutter/material.dart';
import 'package:sqflite_project/screen/Addname.dart';
import 'package:sqflite_project/screen/Addproduct.dart';
import 'package:sqflite_project/screen/viewemployee.dart';
import 'package:sqflite_project/screen/viewproduct.dart';

class Addmenu extends StatefulWidget {
  @override
  State<Addmenu> createState() => _AddmenuState();
}

class _AddmenuState extends State<Addmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("addmenu"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Addproduct()));
                },
                child: Text("ADD MENU"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => viewproduct()));
                },
                child: Text("VIEW PRODUCT"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Addname()));
                },
                child: Text("ADD employe"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => viewemployee()));
                },
                child: Text("VIEW EMPLOYE"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
