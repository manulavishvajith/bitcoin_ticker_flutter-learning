// import 'package:flutter/material.dart';
// import 'package:bitcoin_ticker_flutter/coin_data.dart';

// import 'dart:io' show Platform;


// class DropdownButtons {
//   DropdownButtons({required this.selectedCurrency});

//   String selectedCurrency;

//   getDropDownButton() {
//     if (Platform.isAndroid) {
//       return androidDropDown();

//     } else {
//     }
//   }

//   DropdownButton<String> androidDropDown() {
//     List<DropdownMenuItem<String>> dropDownMenuList = [];
//     for (String currency in currenciesList) {
//       dropDownMenuList.add(DropdownMenuItem(
//         value: currency,
//         child: Text(currency),
//       ));
//     }

//     return DropdownButton<String>(
//       value: selectedCurrency,
//       items: dropDownMenuList,
//       onChanged: (value) {
//         setState(() {
//           selectedCurrency = value.toString();
//           updateExchangeRate();
//         });
//       },
//     );
//   }
// }
