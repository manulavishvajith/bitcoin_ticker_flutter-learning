import 'package:flutter/material.dart';

class CryptoCard {
  CryptoCard({required this.textWidget});

  Widget textWidget;

  Widget createCryptoCard() {
    Widget cryptoCard = Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: textWidget,
          // child:
        ),
      ),
    );

    return cryptoCard;
  }
}
