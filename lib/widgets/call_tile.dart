import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/models/CallList.dart';

class Call extends StatefulWidget {
  Call({Key? key, required this.call}) : super(key: key);
  CallList call;
  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.call.name.toString()),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(widget.call.avatar.toString()),
      ),
      trailing: Text(widget.call.callTime.toString()),
     
    );
  }
}
