import 'package:flutter/material.dart';

class HistoryShop extends StatefulWidget {
  @override
  _HistoryShopState createState() => _HistoryShopState();
}

class _HistoryShopState extends State<HistoryShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Order History"),
      ),
      body: Center(
        child: Text("My History", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
