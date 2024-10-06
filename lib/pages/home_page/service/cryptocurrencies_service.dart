
import 'package:get/get.dart';

class CryptocurrenciesService extends GetConnect {
  Future<Response> getCryptoCurrency() =>
      get('https://api.coingecko.com/api/v3/coins/list');

}
