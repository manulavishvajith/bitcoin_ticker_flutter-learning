import 'package:bitcoin_ticker_flutter/coin_data.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin_ticker_flutter/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:bitcoin_ticker_flutter/components/crypto_card.dart';
import 'package:bitcoin_ticker_flutter/components/text_widget.dart';
import 'package:bitcoin_ticker_flutter/components/currency_picker.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  int btcExchangeRate = 1;
  int ethExchangeRate = 1;
  int ltcExchangeRate = 1;

  Widget btcTextWidget =
      TextWidgetComponent(baseCurrency: 'BTC').createTextWidget('?', 'USD');
  Widget ethTextWidget =
      TextWidgetComponent(baseCurrency: 'ETH').createTextWidget('?', 'USD');
  Widget ltcTextWidget =
      TextWidgetComponent(baseCurrency: 'LTC').createTextWidget('?', 'USD');

  void updateExchangeRate() async {
    setState(() {
      btcTextWidget = const SpinKitCircle(color: Colors.black, size: 30.0);
      ethTextWidget = const SpinKitCircle(color: Colors.black, size: 30.0);
      ltcTextWidget = const SpinKitCircle(color: Colors.black, size: 30.0);
    });

    double? fetchedExchangeRateBTC =
        await Networking().getExchangeRate('BTC', selectedCurrency);

    double? fetchedExchangeRateETH =
        await Networking().getExchangeRate('ETH', selectedCurrency);

    double? fetchedExchangeRateLTC =
        await Networking().getExchangeRate('LTC', selectedCurrency);

    if (fetchedExchangeRateBTC != null) {
      // print(exchangeRate);
      setState(() {
        btcExchangeRate = fetchedExchangeRateBTC.toInt();
        btcTextWidget = Text(
          '1 BTC = $btcExchangeRate $selectedCurrency',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        );
      });
    }
    if (fetchedExchangeRateETH != null) {
      // print(exchangeRate);
      setState(() {
        ethExchangeRate = fetchedExchangeRateETH.toInt();
        ethTextWidget = Text(
          '1 ETH = $ethExchangeRate $selectedCurrency',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        );
      });
    }

    if (fetchedExchangeRateLTC != null) {
      // print(exchangeRate);
      setState(() {
        ltcExchangeRate = fetchedExchangeRateLTC.toInt();
        ltcTextWidget = Text(
          '1 LTC = $ltcExchangeRate $selectedCurrency',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        );
      });
    }
  }

  @override
  void initState() {
    super.initState();
    updateExchangeRate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CryptoCard(textWidget: btcTextWidget).createCryptoCard(),
              CryptoCard(textWidget: ethTextWidget).createCryptoCard(),
              CryptoCard(textWidget: ltcTextWidget).createCryptoCard(),
            ],
          ),
          CurrencyPicker(
              selectedCurrency: selectedCurrency,
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value;
                  updateExchangeRate();
                });
              })
        ],
      ),
    );
  }
}
