import 'package:flutter/material.dart';
import 'package:flutter_currency_app_getx/models/crpyto_model.dart';

class ListItemWidget extends StatelessWidget {
  final CryptoModel crypto;

  const ListItemWidget({super.key, required this.crypto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
          title: Text(crypto.name ?? 'No Name'),
          leading: const Icon(Icons.monetization_on),
          subtitle: Text(crypto.symbol ?? 'No Symbol'),
          trailing: Text(crypto.id ?? 'No ID'),
          shape: BeveledRectangleBorder(
              side: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(16))),
    );
  }
}
