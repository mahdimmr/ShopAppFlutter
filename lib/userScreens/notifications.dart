import 'package:flutter/material.dart';

class NotificationsShop extends StatefulWidget {
  @override
  _NotificationsShopState createState() => _NotificationsShopState();
}

class _NotificationsShopState extends State<NotificationsShop> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Order Notifications"),
      ),
      body: Center(
        child: Text("My Notifications", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
