import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loginpg/Product.dart';
import 'package:loginpg/views/FavButton.dart';
import 'package:loginpg/views/ProductsInCart.dart';
import 'package:loginpg/views/cart.dart';

class cardItem extends StatefulWidget {
  final Product product;
  const cardItem({super.key,required this.product});

  @override
  State<cardItem> createState() => _cardItemState();
}

class _cardItemState extends State<cardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 159, 158, 158).withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FavouriteButton(),
            ],
          ),
          SizedBox(
            height: 90,
            width: 100,
            child: Image.network(widget.product.image)
          ),
          Text(widget.product.title,maxLines: 1,),
          Text('₹ ${widget.product.price.toStringAsFixed(2)}'),
          ElevatedButton(onPressed: (){
            Productsincart.addinCartList(Productsincart.fromProducts(widget.product));
            print('lOGGED');
          }, 
          child: Text('Add To Cart',style: TextStyle(color: Colors.black),),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          ),
        ],
      ),
    );
  }
}