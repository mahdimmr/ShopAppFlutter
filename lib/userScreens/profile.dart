import 'package:flutter/material.dart';

class ProfileShop extends StatefulWidget {
  @override
  _ProfileShopState createState() => _ProfileShopState();
}

class _ProfileShopState extends State<ProfileShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Profile Settings"),
      ),
      body: Center(
        child: Text("My Profile", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
