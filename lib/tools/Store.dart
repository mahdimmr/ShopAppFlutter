class Store {
  String itemName;
  double itemPrice;
  String itemImage;
  double itemRating;

  Store.items({this.itemName, this.itemPrice, this.itemImage, this.itemRating});
} // Store

List<Store> storeItems = [
  Store.items(
      itemName: "Pink Can",
      itemImage:
          "https://sc01.alicdn.com/kf/HTB1bj4TOpXXXXcZXXXXq6xXFXXXs/zm21934a-new-fashion-ladies-clothes-v-neck.jpg_350x350.jpg",
      itemPrice: 2500.00,
      itemRating: 0.0),
  Store.items(
      itemName: "test Short",
      itemImage: "https://source.unsplash.com/random/401x401",
      itemPrice: 12000.00,
      itemRating: 0.0),
  Store.items(
      itemName: "Pink Can",
      itemImage: "https://source.unsplash.com/random/402x402",
      itemPrice: 2500.00,
      itemRating: 0.0),
  Store.items(
      itemName: "Black Short",
      itemImage: "https://source.unsplash.com/random/403x403",
      itemPrice: 12000.00,
      itemRating: 0.0),
  Store.items(
      itemName: "Pink Can",
      itemImage: "https://source.unsplash.com/random/404x404",
      itemPrice: 2500.00,
      itemRating: 0.0),
  Store.items(
      itemName: "Black Short",
      itemImage: "https://source.unsplash.com/random/405x405",
      itemPrice: 12000.00,
      itemRating: 0.0),
  Store.items(
      itemName: "Pink Can",
      itemImage: "https://source.unsplash.com/random/406x406",
      itemPrice: 2500.00,
      itemRating: 0.0),
  Store.items(
      itemName: "Black Short",
      itemImage: "https://source.unsplash.com/random/407x407",
      itemPrice: 12000.00,
      itemRating: 0.0),
];
