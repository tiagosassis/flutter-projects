// ignore_for_file: avoid_print, unused_local_variable

import 'package:conversor_de_moeda/src/repositories/currency_repository.dart';
import 'package:flutter/material.dart';

import '../models/currency_list_model.dart';

class HomeController {
  final repository = CurrencyRepository();
  List<CurrencyListModel> currencies = [];
  CurrencyListModel toCurrency =
      CurrencyListModel(name: '', value: 0, symbol: '');
  CurrencyListModel fromCurrency =
      CurrencyListModel(name: '', value: 0, symbol: '');
  TextEditingController toText;
  TextEditingController fromText;
  final state = ValueNotifier<HomeState>(HomeState.start);
  String errorText = '';

  HomeController({required this.toText, required this.fromText});

  Future start() async {
    state.value = HomeState.loading;
    try {
      currencies = await repository.fetchCurrencyList();
      fromCurrency = currencies.elementAt(currencies
          .indexWhere((element) => element.name == 'BRL')); // Real Brasileiro
      toCurrency = currencies.elementAt(currencies.indexWhere(
          (element) => element.name == 'USD')); // Dollar Norte Americano
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }

  void convert() {
    errorText = '';
    double returnValue;
    String text = fromText.text;

    text = text.replaceAll('-', '');
    text = text.replaceAll(' ', '');
    if (text == '') text = '0';

    double value = double.tryParse(text.replaceAll(',', '.')) ?? -1;

    if (value < 0) {
      value = 0;
      errorText = 'O valor \'$text\' não é válido para conversão';
    }

    if (currencies
            .elementAt(
                currencies.indexWhere((element) => element.name == 'USD'))
            .value !=
        fromCurrency.value) {
      // se a moeda origem de conversão não for dólar americano, será convertida para tal
      value /= currencies.elementAt(currencies.indexOf(fromCurrency)).value;
    }

    returnValue = value * toCurrency.value;

    returnValue =
        value * currencies.elementAt(currencies.indexOf(toCurrency)).value;

    toText.text = '${toCurrency.symbol} ${returnValue.toStringAsFixed(5)}';
  }
}

enum HomeState { start, loading, success, error }
