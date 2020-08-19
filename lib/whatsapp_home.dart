import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call_screen.dart';
import 'package:whatsapp_clone/pages/camera_screen.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    this._tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: this._tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "Chats",),
            Tab(text: "Calls",),
            Tab(text: "Status",)
          ],
        ),
        actions: [
          Icon(
            Icons.search
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0)
          ),
          Icon(
            Icons.more_vert
          )
        ],
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          CallsScreen(),
          StatusScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}