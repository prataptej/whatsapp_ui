import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: NetworkImage(chat.avatar),
              ),
            ),
          ),
          title: Text(chat.name),
          subtitle: Text(chat.message),
          trailing: Text(
            chat.time,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
          indent: 80,
          endIndent: 20,
        ),
      ],
    );
  }
}
