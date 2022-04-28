import 'package:flutter/material.dart';
import 'package:flutteriseng1/pages/chat_page.dart';
import 'package:flutteriseng1/pages/gallery_page.dart';
import 'package:flutteriseng1/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        GalleryPage.nameRoute: (context) => GalleryPage(),
        ChatPage.nameRoute: (context) => ChatPage()
      },
    );
  }
}