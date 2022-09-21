import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SentMessage extends StatefulWidget {
  @override
  State<SentMessage> createState() => _SentMessageState();

  String? sentText;
  String? sentTime;

  SentMessage({
    required this.sentText,
    required this.sentTime,
  });
}

class _SentMessageState extends State<SentMessage> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.sentText!,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                right: 12,
                bottom: 4,
                child: Row(
                  children: [Text(widget.sentTime!), Icon(Icons.done_all)],
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
