import 'package:flutter/material.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/widgets/chat_tile.dart';

class chat_list extends StatefulWidget {
  const chat_list({Key? key}) : super(key: key);

  @override
  State<chat_list> createState() => _chat_listState();
}

class _chat_listState extends State<chat_list> {
  List<User> chatlist = [
    User(
      avatar:
          "https://i.pinimg.com/originals/60/78/eb/6078ebbcb4a2c618f2e3080ed0c00061.jpg",
      name: "Uvais",
      isGroup: false,
      updatedAt: "12:00pm",
      message: "hello",
    ),
    User(
      avatar:
          "https://wallpaperaccess.com/full/4779674.jpg",
      name: "bilal",
      isGroup: true,
      updatedAt: "10:00pm",
      message: "hey",
    ),
    User(
      avatar: "",
      name: "Mufeedh",
      isGroup: false,
      updatedAt: "12:00pm",
      message: "hello",
    ),
    User(
      avatar: "",
      name: "Hisham",
      isGroup: false,
      updatedAt: "9:00pm",
      message: "hy",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (BuildContext context, index) {
          return ChatTile(data: chatlist[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: SizedBox(
            height: 180,
            child: Icon(
              Icons.chat,
            )),
      ),
    );
  }
}
