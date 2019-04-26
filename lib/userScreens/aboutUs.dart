import 'package:flutter/material.dart';

class ShopAboutUs extends StatefulWidget {
  @override
  _ShopAboutUsState createState() => _ShopAboutUsState();
}

class _ShopAboutUsState extends State<ShopAboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("About Us"),
      ),
      body: Center(
        child: Text("About Us", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
