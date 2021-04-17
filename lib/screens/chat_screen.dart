import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat.dart';
import 'package:whatsapp_ui/widgets/chat_tile.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return ChatTile(
              chat: chats[index],
            );
          }),
    );
  }
}
