import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/models/chat.dart';
import 'package:whatsapp_ui/widgets/status_tile.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: NetworkImage(chats[0].avatar),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
            title: Text("My Status"),
            subtitle: Text("Tap to add status update"),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            color: Color(0xFFF0F0F0),
            child: Text("Recent Updates"),
          ),
          for (int i = 1; i < chats.length; i++)
            StatusTile(
              chat: chats[i],
            ),
        ],
      ),
    );
  }
}
