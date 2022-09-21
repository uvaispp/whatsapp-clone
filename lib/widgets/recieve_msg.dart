import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecievedMessage extends StatefulWidget {
  @override
  State<RecievedMessage> createState() => _RecievedMessageState();
  String? recieveText;
  String? recieveTime;

  RecievedMessage({
    required this.recieveText,
    required this.recieveTime,
  });
}

class _RecievedMessageState extends State<RecievedMessage> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 10,
        ),
        child: Card(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                left: 6, right: 26, top: 5, bottom: 18),
                child: Text(
                  widget.recieveText!,
                  style: TextStyle(fontSize: 16),
                ),
                ),
                Positioned(
                  right: 12,
                  bottom: 4,
                  child: Row(
                    children: [Text(widget.recieveTime!),Icon(Icons.done_all)],
                  ),
                  )
                  ],
            ),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
        ),
      ),
    );
  }
}
