import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpg/views/ProductsInCart.dart';

class cartView extends StatefulWidget {
  cartView({super.key});
  List <Productsincart> cartProduct=[];
  @override
  State<cartView> createState() => _cartViewState();
}

class _cartViewState extends State<cartView> {
  @override
  Widget build(BuildContext context) {
    print(Productsincart.cartList);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
    );
  }
}