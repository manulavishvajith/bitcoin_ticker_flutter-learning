import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import '../coin_data.dart';

class CurrencyPicker extends StatelessWidget {
  final String selectedCurrency;
  final Function onChanged;

  const CurrencyPicker({
    required this.selectedCurrency,
    required this.onChanged,
  });

  DropdownButton<String> androidDropDown() {
    return DropdownButton<String>(
      value: selectedCurrency,
      items: currenciesList.map<DropdownMenuItem<String>>((String currency) {
        return DropdownMenuItem<String>(
          value: currency,
          child: Text(currency),
        );
      }).toList(),
      onChanged: (value) {
        if (value != null) {
          onChanged(value);
        }
      },
    );
  }

  CupertinoPicker iOSPicker() {
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        onChanged(currenciesList[selectedIndex]);
      },
      children: currenciesList.map<Text>((String currency) {
        return Text(currency);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 30.0),
      color: Colors.lightBlue,
      child: Platform.isIOS ? iOSPicker() : androidDropDown(),
    );
  }
}
