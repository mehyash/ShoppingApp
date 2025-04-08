import 'package:loginpg/Product.dart';

class Productsincart {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  static List<Productsincart> cartList=[];
  Productsincart(
    {
      required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image
    }
  );
  factory Productsincart.fromProducts(Product instance){
    return Productsincart(id: instance.id, title: instance.title, price: instance.price, description: instance.description, category: instance.category, image: instance.image);
  }

  static void addinCartList(Productsincart cart){
    cartList.add(cart);
  }

}