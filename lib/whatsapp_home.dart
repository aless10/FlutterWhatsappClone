import 'package:flutter/material.dart';

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
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [

        ],
      ),
    );
  }
}