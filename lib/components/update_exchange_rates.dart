// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter/material.dart';
// import 'package:bitcoin_ticker_flutter/services/networking.dart';

// class UpdateExchangeRates {
//   UpdateExchangeRates(
//       {required this.btcTextWidget,
//       required this.ethTextWidget,
//       required this.ltcTextWidget,
//       required selectedCurrency});

//   Widget btcTextWidget;
//   Widget ethTextWidget;
//   Widget ltcTextWidget;
//   late String selectedCurrency;

//   void updateExchangeRate() async {
//     btcTextWidget = const SpinKitCircle(color: Colors.black, size: 30.0);
//     ethTextWidget = const SpinKitCircle(color: Colors.black, size: 30.0);
//     ltcTextWidget = const SpinKitCircle(color: Colors.black, size: 30.0);

//     double? fetchedExchangeRateBTC =
//         await Networking().getExchangeRate('BTC', selectedCurrency);

//     double? fetchedExchangeRateETH =
//         await Networking().getExchangeRate('ETH', selectedCurrency);

//     double? fetchedExchangeRateLTC =
//         await Networking().getExchangeRate('LTC', selectedCurrency);

//     if (fetchedExchangeRateBTC != null) {
//       // print(exchangeRate);
//       setState(() {
//         btcExchangeRate = fetchedExchangeRateBTC.toInt();
//         btcTextWidget = Text(
//           '1 BTC = $btcExchangeRate $selectedCurrency',
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//           ),
//         );
//       });
//     }
//     if (fetchedExchangeRateETH != null) {
//       // print(exchangeRate);
//       setState(() {
//         ethExchangeRate = fetchedExchangeRateETH.toInt();
//         ethTextWidget = Text(
//           '1 ETH = $ethExchangeRate $selectedCurrency',
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//           ),
//         );
//       });
//     }

//     if (fetchedExchangeRateLTC != null) {
//       // print(exchangeRate);
//       setState(() {
//         ltcExchangeRate = fetchedExchangeRateLTC.toInt();
//         ltcTextWidget = Text(
//           '1 LTC = $ltcExchangeRate $selectedCurrency',
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//           ),
//         );
//       });
//     }
//   }
// }
