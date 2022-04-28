import 'package:flutter/material.dart';
import 'package:flutteriseng1/pages/layouts/drawer.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homepage';

  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("This is HomePage", style: TextStyle(fontSize: 30),),
      ),
      drawer: DrawerMenu(),
    );
  }
}
