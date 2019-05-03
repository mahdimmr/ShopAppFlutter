import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/tools/Store.dart';
import 'profile.dart';
import 'favorites.dart';
import 'messages.dart';
import 'cart.dart';
import 'notifications.dart';
import 'history.dart';
import 'aboutUs.dart';
import 'loginLogout.dart';
import 'delivery.dart';
import 'item_detail.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Shop"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite, color: Colors.white),
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return ShopFavorites();
                }));
              }),
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.chat, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(builder: (BuildContext context) {
                      return ShopMessages();
                    }));
                  }),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.red,
                child: Text("22",
                    style: TextStyle(color: Colors.white, fontSize: 10.0),
                    maxLines: 1),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: storeItems.length,
                  padding: EdgeInsets.all(8.0),
                  itemBuilder: (BuildContext context, int i) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ItemDetail(
                          itemImage: storeItems[i].itemImage,
                          itemName: storeItems[i].itemName,
                          itemRating: storeItems[i].itemRating,
                          itemPrice: storeItems[i].itemPrice,
                        )));
                      },
                      child: Card(
                        child: Stack(
                          alignment: FractionalOffset.topLeft,
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              storeItems[i].itemImage),
                                          fit: BoxFit.fitWidth)),
                                ),
                                Container(
                                  color: Colors.black.withAlpha(100),
                                  height: 35.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "${storeItems[i].itemName.substring(0, 6)}...",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16.0,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "${storeItems[i].itemPrice}Rial",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.red[500]),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 30.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(5.0),
                                          bottomRight: Radius.circular(5.0)),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.blue,),
                                      Text("0.0", style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ),
                                IconButton(icon: Icon(Icons.favorite_border, color: Colors.blue), onPressed: () {},)
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (BuildContext context) {
                return ShopCart();
              }));
            },
            child: Icon(Icons.shopping_cart),
            elevation: 5,
          ),
          CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: Text("3",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
                maxLines: 1),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("MahdiRezayi"),
              accountEmail: Text("mahdi.rezayi76@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 35),
              ),
            ),
            ListTile(
              title: Text("Order Notifications"),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return NotificationsShop();
                }));
              },
              leading: CircleAvatar(
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            ListTile(
              title: Text("Order History"),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return HistoryShop();
                }));
              },
              leading: CircleAvatar(
                child: Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Profile Settings"),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return ProfileShop();
                }));
              },
              leading: CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            ListTile(
              title: Text("Delivery Address"),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return DeliveryShop();
                }));
              },
              leading: CircleAvatar(
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("About Us"),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return ShopAboutUs();
                }));
              },
              trailing: CircleAvatar(
                child: Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            ListTile(
              title: Text("Login"),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return LoginShop();
                }));
              },
              trailing: CircleAvatar(
                child: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
