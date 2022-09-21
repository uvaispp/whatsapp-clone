import 'package:flutter/material.dart';
import 'package:whatsapp/screens/call_list.dart';
import 'package:whatsapp/screens/chat_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tb;
  @override
  void initState() {
    super.initState();
    _tb = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            const Tab(
              icon: Icon(Icons.camera_alt),
            ),
            const Tab(
              text: 'CHATS',
            ),
            const Tab(
              text: 'STATUS',
            ),
            const Tab(
              text: 'CALLS',
            )
          ],
          controller: _tb,
        ),
        title: Text(
          'Whatsapp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        actions: [
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (BuildContext) {
            return [
              PopupMenuItem(
                child: Text('New group'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('NewBroadcast'),
                value: 2,
              ),
              PopupMenuItem(
                child: Text('LinkedDevices'),
                value: 3,
              ),
              PopupMenuItem(
                child: Text('StarredMessages'),
                value: 4,
              ),
              PopupMenuItem(
                child: Text('payments'),
                value: 5,
              ),
              PopupMenuItem(
                child: Text('Settings'),
                value: 6,
              ),
            ];
          })
        ],
      ),
      body: TabBarView(
        children: [
          Text('CameraScreen'),
          chat_list(),
          Text('Status'),
          Calls(),
        ],
        controller: _tb,
      ),
    );
  }
}
