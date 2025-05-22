import 'package:http/http.dart' as http;
import 'dart:convert';

const apiURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'C30F0DFF-4F57-4C1F-928E-1B2CEE17B6D5';

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
