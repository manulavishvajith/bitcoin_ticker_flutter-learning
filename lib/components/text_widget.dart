import 'package:flutter/material.dart';


class TextWidgetComponent {
  TextWidgetComponent({required this.baseCurrency});

  String baseCurrency;

  Widget createTextWidget(String exchangeRate, String selectedCurrency) {
    return Text(
      '1 $baseCurrency = $exchangeRate $selectedCurrency',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20.0,
        color: Colors.white,
      ),
    );
  }
}
