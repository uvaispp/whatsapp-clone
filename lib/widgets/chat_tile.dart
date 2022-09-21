import 'package:flutter/material.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/screens/ChatDetailsScreen.dart';

class ChatTile extends StatefulWidget {
  ChatTile({required this.data});
  User data;

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChatDetail(details: widget.data))),
      child: ListTile(
        title: Text(widget.data.name.toString()),
        subtitle: Row(children: [
          Icon(
            Icons.done_all,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(widget.data.message.toString()),
          ),
        ]),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            widget.data.avatar == ""
                ? widget.data.isGroup == true
                    ? "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png"
                    : 'https://image.shutterstock.com/image-vector/people-icon-logo-design-isolated-260nw-1714390735.jpg'
                : widget.data.avatar.toString(),
          ),
          radius: 20,
        ),
        trailing: Text(widget.data.updatedAt.toString()),
      ),
    );
  }
}
