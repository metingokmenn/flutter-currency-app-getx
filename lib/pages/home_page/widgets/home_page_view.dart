import 'package:flutter/material.dart';
import 'package:flutter_currency_app_getx/pages/home_page/controller/home_page_controller.dart';
import 'package:flutter_currency_app_getx/pages/home_page/widgets/list_item_widget.dart';
import 'package:get/get.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController = Get.put(HomePageController());

    return Obx(() {
      if (homePageController.cryptolist.isEmpty) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      return ListView.builder(
        padding: const EdgeInsets.only(top: 4),
        itemCount: homePageController.cryptolist.length,
        itemBuilder: (context, index) {
          final crypto = homePageController.cryptolist[index];
          return ListItemWidget(crypto: crypto);
        },
      );
    });
  }
}
