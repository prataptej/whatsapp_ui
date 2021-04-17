import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/models/chat.dart';

class StatusTile extends StatelessWidget {
  const StatusTile({
    this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: kSecondary,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: NetworkImage(chat.avatar),
                ),
              ),
            ),
          ),
          title: Text(chat.name),
          subtitle: Text("Yesterday " + chat.time),
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
