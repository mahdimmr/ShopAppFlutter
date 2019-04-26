import 'package:flutter/material.dart';

class DeliveryShop extends StatefulWidget {
  @override
  _DeliveryShopState createState() => _DeliveryShopState();
}

class _DeliveryShopState extends State<DeliveryShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Delivery Address"),
      ),
      body: Center(
        child: Text("My Delivery Address", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
