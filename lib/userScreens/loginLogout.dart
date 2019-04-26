import 'package:flutter/material.dart';

class LoginShop extends StatefulWidget {
  @override
  _LoginShopState createState() => _LoginShopState();
}

class _LoginShopState extends State<LoginShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Login"),
      ),
      body: Center(
        child: Text("Login", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
