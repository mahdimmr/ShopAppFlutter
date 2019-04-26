import 'package:flutter/material.dart';

class ShopMessages extends StatefulWidget {
  @override
  _ShopMessagesState createState() => _ShopMessagesState();
}

class _ShopMessagesState extends State<ShopMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Messages"),
      ),
      body: Center(
        child: Text("My Messages", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
