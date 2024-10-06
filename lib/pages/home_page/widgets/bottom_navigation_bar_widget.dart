import 'package:flutter/material.dart';
import 'package:flutter_currency_app_getx/pages/home_page/controller/home_page_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final HomePageController homePageController;
  const BottomNavigationBarWidget({
    super.key,
    required this.homePageController,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: homePageController.navBarIndex.value,
          onTap: homePageController.changeIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.timelapse), label: 'Real-Time'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites')
          ],
        ));
  }
}
