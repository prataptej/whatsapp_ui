import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat.dart';
import 'package:whatsapp_ui/widgets/call_tile.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return CallTile(
            chat: chats[index],
            type: index % 2 == 0 ? "made" : "recieved",
          );
        },
      ),
    );
  }
}
