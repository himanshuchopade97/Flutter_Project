// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  final Map rates;

  // ignore: use_key_in_widget_constructors
  const Detailspage({required this.rates});
  @override
  Widget build(BuildContext context) {
    List _currencies = rates.keys.toList();
    List _exchanegRates = rates.values.toList();
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: _currencies.length,
          itemBuilder: (context, index) {
            String _currency = _currencies[index].toString().toUpperCase();
            String _exchangeRate = _exchanegRates[index].toString();
            return ListTile(
              title: Text(
                "$_currency: $_exchangeRate",
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}
