import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutteriseng1/pages/layouts/drawer.dart';

class ChatPage extends StatefulWidget {
  static const nameRoute = '/chat';

  ChatPage({Key key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ListTile> myList = List.generate(100, (index){
    return ListTile(
      leading: CircleAvatar(child: Text("${index+1}")),
      title: Text(faker.person.name()),
      subtitle: Text(faker.lorem.sentence()),
      trailing: Text(faker.date.time()),
      onTap: (){},
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context,index) {
          return Dismissible(
            background: Container(color: Colors.red,child: Icon(Icons.delete), alignment: Alignment.centerRight, padding: EdgeInsets.only(right: 10),),
            key: Key(index.toString()),
            child: ListTile(
              leading: CircleAvatar(child: Text("${index+1}")),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
              trailing: Text(faker.date.time()),
              onTap: (){},
            ),
            onDismissed: (direction){
              print(direction);
            },
            confirmDismiss: (direction){
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Confirm"),
                    content: Text("Are you sure to delete this?"),
                    actions: [
                      TextButton(
                        child: Text("No"),
                        onPressed: (){
                          Navigator.of(context).pop(false);
                        },
                      ),
                      TextButton(
                        child: Text("Yes"),
                        onPressed: (){
                          Navigator.of(context).pop(true);
                        },
                      ),
                    ],
                  );
                }
              );
            },
          );
        },
      ),
      drawer: DrawerMenu(),
    );
  }
}