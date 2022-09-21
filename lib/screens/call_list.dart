import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/models/CallList.dart';
import 'package:whatsapp/widgets/call_tile.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List<CallList> call_data = [
    CallList(
      avatar: "https://i.pinimg.com/originals/60/78/eb/6078ebbcb4a2c618f2e3080ed0c00061.jpg",
      name: "uvais",
      callTime: '12:00pm',
      callType: 'Incoming',
      icon: 'Audio',
    ),
     CallList(
      avatar: "https://wallpaperaccess.com/full/4779674.jpg",
      name: "bilal",
      callTime: '12:00pm',
      callType: 'outgoing',
      icon: 'Audio',
    ),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: call_data.length,
        itemBuilder: (BuildContext context, int index) {
          return Call(call: call_data[index]);
        },
      ),
    );
  }
}
