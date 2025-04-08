import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  _FavouriteButtonState createState()=> _FavouriteButtonState();

}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite=false;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
        isFavourite=!isFavourite;
      });
    }, 
    icon: Icon(Icons.favorite_outline_rounded, 
    color: isFavourite ? Colors.pinkAccent : Colors.grey ,
    )
    );
  }
}