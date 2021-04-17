import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/models/chat.dart';

class CallTile extends StatelessWidget {
  const CallTile({
    this.chat,
    this.type,
  });

  final String type;

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
          subtitle: Row(
            children: [
              Icon(
                type == "made" ? Icons.call_made : Icons.call_received,
                size: 15,
                color: Random().nextInt(10) > 5 ? Colors.red : Colors.green,
              ),
              Text(chat.time),
            ],
          ),
          trailing: Icon(
            Icons.call,
            color: kSecondary,
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
