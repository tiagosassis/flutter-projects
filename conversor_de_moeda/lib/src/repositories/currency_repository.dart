// ignore_for_file: avoid_print

import 'package:conversor_de_moeda/src/models/currency_model.dart';
import 'package:dio/dio.dart';

import '../models/currency_list_model.dart';

class CurrencyRepository {
  final List<CurrencyListModel> list = [];
  final dio = Dio();
  var url =
      'https://api.freecurrencyapi.com/v1/latest?apikey=GaoIlRUiVUF7PvUcQTfTineYo9DprGKETUGKpfg7';

  Future fetchCurrencyList() async {
    final response = await dio.get(url);
    CurrencyModel currency = CurrencyModel.fromJson(response.data);
    list.add(CurrencyListModel(symbol: '\$' , name: 'BRL', value: currency.data!.bRL!.toDouble()));
    list.add(CurrencyListModel(symbol: '\$' , name: 'USD', value: currency.data!.uSD!.toDouble()));
    list.add(CurrencyListModel(symbol: '€' , name: 'EUR', value: currency.data!.eUR!.toDouble()));
    list.add(CurrencyListModel(symbol: '£' , name: 'GBP', value: currency.data!.gBP!.toDouble()));
    list.add(CurrencyListModel(symbol: '¥', name: 'JPY', value: currency.data!.jPY!.toDouble()));
    list.add(CurrencyListModel(symbol: '\$' , name: 'AUD', value: currency.data!.uSD!.toDouble()));
    list.add(CurrencyListModel(symbol: 'лв', name: 'BGN', value: currency.data!.bGN!.toDouble()));
    list.add(CurrencyListModel(symbol: '\$' , name: 'CAD', value: currency.data!.cAD!.toDouble()));
    list.add(CurrencyListModel(symbol: 'Fr', name: 'CHF', value: currency.data!.cHF!.toDouble()));
    list.add(CurrencyListModel(symbol: '¥', name: 'CNY', value: currency.data!.cNY!.toDouble()));
    list.add(CurrencyListModel(symbol: 'Kč', name: 'CZK', value: currency.data!.cZK!.toDouble()));
    list.add(CurrencyListModel(symbol: 'kr', name: 'DKK', value: currency.data!.dKK!.toDouble()));
    list.add(CurrencyListModel(symbol: '\$' , name: 'HKD', value: currency.data!.hKD!.toDouble()));
    list.add(CurrencyListModel(symbol: 'kn', name: 'HRK', value: currency.data!.hRK!.toDouble()));
    list.add(CurrencyListModel(symbol: 'Ft', name: 'HUF', value: currency.data!.hUF!.toDouble()));
    list.add(CurrencyListModel(symbol: 'Rp', name: 'IDR', value: currency.data!.iDR!.toDouble()));
    list.add(CurrencyListModel(symbol: '₪', name: 'ILS', value: currency.data!.iLS!.toDouble()));
    list.add(CurrencyListModel(symbol: '₹', name: 'INR', value: currency.data!.iNR!.toDouble()));
    list.add(CurrencyListModel(symbol: 'kr', name: 'ISK', value: currency.data!.iSK!.toDouble()));
    list.add(CurrencyListModel(symbol: '₩', name: 'KRW', value: currency.data!.kRW!.toDouble()));
    list.add(CurrencyListModel(symbol: '\$', name: 'MXN', value: currency.data!.mXN!.toDouble()));
    list.add(CurrencyListModel(symbol: 'RM', name: 'MYR', value: currency.data!.mYR!.toDouble()));
    list.add(CurrencyListModel(symbol: 'kr', name: 'NOK', value: currency.data!.nOK!.toDouble()));
    list.add(CurrencyListModel(symbol: '\$' , name: 'NZD', value: currency.data!.nZD!.toDouble()));
    list.add(CurrencyListModel(symbol: '₱', name: 'PHP', value: currency.data!.pHP!.toDouble()));
    list.add(CurrencyListModel(symbol: 'zł', name: 'PLN', value: currency.data!.pLN!.toDouble()));
    list.add(CurrencyListModel(symbol: 'L', name: 'RON', value: currency.data!.rON!.toDouble()));
    list.add(CurrencyListModel(symbol: '₽', name: 'RUB', value: currency.data!.rUB!.toDouble()));
    list.add(CurrencyListModel(symbol: 'kr', name: 'SEK', value: currency.data!.sEK!.toDouble()));
    list.add(CurrencyListModel(symbol: '\$' ,name: 'SGD', value: currency.data!.sGD!.toDouble()));
    list.add(CurrencyListModel(symbol: '฿', name: 'THB', value: currency.data!.tHB!.toDouble()));
    list.add(CurrencyListModel(symbol: '₺', name: 'TRY', value: currency.data!.tRY!.toDouble()));
    list.add(CurrencyListModel(symbol: 'R', name: 'ZAR', value: currency.data!.zAR!.toDouble()));

    return list;
  }
}

  //double? pHP;
  double? pLN;
  double? rON;
  double? rUB;
  double? sEK;
  double? sGD;
  double? tHB;
  double? tRY;
  int? uSD;
  double? zAR;