import 'package:flutter/material.dart';

class GridItemWidget extends StatelessWidget {
  const GridItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Container(
      color: Colors.red,
    ));
  }
}
