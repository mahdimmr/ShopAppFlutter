import 'package:flutter/material.dart';

class ShopCart extends StatefulWidget {
  @override
  _ShopCartState createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Cart"),
      ),
      body: Center(
          child: Text(
        "Cart",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
