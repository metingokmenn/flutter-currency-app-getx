import 'package:flutter/material.dart';
import 'package:flutter_currency_app_getx/pages/favorites_page/views/favorites_page_view.dart';
import 'package:flutter_currency_app_getx/pages/home_page/views/home_page.dart';
import 'package:flutter_currency_app_getx/pages/real_time_page/views/real_time_page_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cryptocurrency App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/favorites',
          page: () => const FavoritesPage(),
        ),
        GetPage(name: '/real-time', page: () => const RealTimePage())
      ],
    );
  }
}
