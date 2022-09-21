import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/widgets/recieve_msg.dart';
import 'package:whatsapp/widgets/sent_msg.dart';

class ChatDetail extends StatefulWidget {
  ChatDetail({Key? key, required this.details}) : super(key: key);
  User details;
  TextEditingController _msg_ctrlr = TextEditingController();

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  bool Show_Send = false;

  bool Show_emoji = false;

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        titleSpacing: 0,
        leading: Row(
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: () => Navigator.pop(context),
            ),
            SizedBox(
              width: 3,
            ),

            // IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back),),
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(widget.details.avatar.toString()),
            ),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.details.name.toString()),
            Text(
              'last seen ${widget.details.updatedAt.toString()}',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        actions: [
          Icon(
            (Icons.video_call_rounded),
          ),
          Icon(Icons.call_end_rounded),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('View Contact')),
                PopupMenuItem(child: Text('Media, Links and docs')),
                PopupMenuItem(child: Text('Search')),
                PopupMenuItem(child: Text('Mute Notification')),
                PopupMenuItem(child: Text('Wallpaper')),
                PopupMenuItem(child: Text('More')),
              ];
            },
          )
        ],
      ),
      body: Container(
        child: Stack(children: [
          ListView(
            children: [
              SentMessage(sentText: 'hey', sentTime: '12:00pm'),
              RecievedMessage(
                recieveText: 'hy',
                recieveTime: '10:00am',
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Flexible(
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIconColor: Colors.grey,
                            suffixIconColor: Colors.grey,
                            focusedBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            suffixIcon: ShowIcon(),
                            hintText: 'Message',
                            // icon: IconButton(
                            //   icon:  Icon(Show_emoji?Icons.emoji_emotions_outlined:Icons.keyboard),
                            //   onPressed: () {
                            //     setState
                            //   }),
                            icon: IconButton(
                              onPressed: () {
                                setState(() {
                                  Show_emoji = !Show_emoji;
                                });
                              },
                              icon: Icon(Show_emoji
                                  ? Icons.emoji_emotions_outlined
                                  : Icons.keyboard),
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.teal,
                        child: Icon(Show_Send ? Icons.send : Icons.mic)),
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }

  Row ShowIcon() {
    if (Show_Send) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.attach_file),
        ],
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.attach_file),
          Icon(Icons.camera_alt),
        ],
      );
    }
  }
}
