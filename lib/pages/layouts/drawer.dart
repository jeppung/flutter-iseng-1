import 'package:flutter/material.dart';
import 'package:flutteriseng1/pages/chat_page.dart';
import 'package:flutteriseng1/pages/gallery_page.dart';
import 'package:flutteriseng1/pages/home_page.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({
    Key key,
  }) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.red,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(bottom: 15, left: 20),
            child: Text("Menu", style: TextStyle(fontSize: 30),),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home, size: 30,),
                      title: Text("Home Page", style: TextStyle(fontSize: 20),),
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pushReplacementNamed(HomePage.nameRoute);
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.photo, size: 30,),
                      title: Text("Gallery", style: TextStyle(fontSize: 20),),
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pushReplacementNamed(GalleryPage.nameRoute);
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.chat, size: 30,),
                      title: Text("Chat", style: TextStyle(fontSize: 20),),
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pushReplacementNamed(ChatPage.nameRoute);
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_bag, size: 30,),
                      title: Text("Shop", style: TextStyle(fontSize: 20),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.settings, size: 30,),
                      title: Text("Settings", style: TextStyle(fontSize: 20),),
                      onTap: (){},
                    ),
                    SizedBox(height: 300,),
                    ListTile(
                      leading: Icon(Icons.logout_outlined, size: 30,),
                      title: Text("Logout", style: TextStyle(fontSize: 20),),
                      onTap: (){},
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}