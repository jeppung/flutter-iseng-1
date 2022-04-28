import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutteriseng1/pages/layouts/drawer.dart';

class GalleryPage extends StatelessWidget {
  static const nameRoute = '/gallery';

  GalleryPage({Key key}) : super(key: key);

  List<Container> myList = List.generate(50, (index) {
    return Container(
      width: 100,
      height: 100,
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
      child: Image.network("https://picsum.photos/id/$index/200"),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
        centerTitle: true,
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: myList,
      ),
      drawer: DrawerMenu(),
    );
  }
}