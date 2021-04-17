import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/screens/calls_screen.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimary,
        accentColor: kAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedTabIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: _selectedTabIndex,
    );
    _tabController.addListener(() {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          Icon(
            Icons.search,
            size: 24,
          ),
          Icon(
            Icons.more_vert,
            size: 24,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text("Camera"),
          ),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          _selectedTabIndex == 2
              ? Icons.camera_alt
              : _selectedTabIndex == 3
                  ? Icons.add_call
                  : Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
