import 'package:flutter_currency_app_getx/models/crpyto_model.dart';
import 'package:flutter_currency_app_getx/pages/home_page/service/cryptocurrencies_service.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePageController extends GetxController {
  RxInt navBarIndex = 0.obs;
  RxString appBarTitle = 'Cryptocurrencies'.obs;
  RxList<CryptoModel> cryptolist = <CryptoModel>[].obs;

  final CryptocurrenciesService service = CryptocurrenciesService();

  void changeIndex(int index) {
    navBarIndex.value = index;
    switch (index) {
      case 0:
        appBarTitle.value = 'Cryptocurrencies';
        break;
      case 1:
        appBarTitle.value = 'Real Time';
        break;
      case 2:
        appBarTitle.value = 'Favorites';
        break;
    }
    debugPrint(index.toString());
  }

  Future<void> fetchCrpytoCurrencies() async {
    Response apiResponse = await service.getCryptoCurrency();
    if (apiResponse.statusCode == 200) {
      cryptolist.value = List<CryptoModel>.from(
          apiResponse.body.map((json) => CryptoModel.fromMap(json)));
    } else {
      debugPrint('Failed to load cryptocurrency data.');
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchCrpytoCurrencies();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
