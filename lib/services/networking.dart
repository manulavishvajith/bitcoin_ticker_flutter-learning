import 'package:http/http.dart' as http;
import 'dart:convert';

const apiURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '';

class Networking {



  Future<double?> getExchangeRate(
      String baseCurrency, String priceCurrency) async {
    Uri url = Uri.parse('$apiURL/$baseCurrency/$priceCurrency?apikey=$apiKey');
    print(url);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> results = jsonDecode(response.body);
      return results['rate']; //returning on the rate
    } else {
      print(response.body);
      return null;
    }
  }
}
