import 'package:flutter/material.dart';

class cardCard extends StatefulWidget {
  const cardCard({super.key});

  @override
  State<cardCard> createState() => _cardCardState();
}

class _cardCardState extends State<cardCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListTile(
      ),
    );
  }
}