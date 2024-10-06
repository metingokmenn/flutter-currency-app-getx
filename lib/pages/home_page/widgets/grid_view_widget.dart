import 'package:flutter/material.dart';
import 'package:flutter_currency_app_getx/pages/home_page/widgets/grid_item_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemBuilder: (context, index) {
          return const GridItemWidget();
        });
    
  }
}
