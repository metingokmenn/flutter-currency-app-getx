import 'package:flutter/material.dart';
import 'package:flutter_currency_app_getx/pages/favorites_page/views/favorites_page_view.dart';
import 'package:flutter_currency_app_getx/pages/home_page/controller/home_page_controller.dart';
import 'package:flutter_currency_app_getx/pages/home_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter_currency_app_getx/pages/home_page/widgets/home_page_view.dart';
import 'package:flutter_currency_app_getx/pages/real_time_page/views/real_time_page_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController =
        Get.put(HomePageController(), permanent: false);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Obx(() => Text(
                homePageController.appBarTitle.value,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          centerTitle: true,
        ),
        body: Obx(() => IndexedStack(
              index: homePageController.navBarIndex.value,
              children: const [HomePageView(), RealTimePage(), FavoritesPage()],
            )),
        bottomNavigationBar: BottomNavigationBarWidget(
          homePageController: homePageController,
        ));
  }
}
