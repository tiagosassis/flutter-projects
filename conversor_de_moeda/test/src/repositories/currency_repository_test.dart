// ignore_for_file: avoid_print

import 'package:conversor_de_moeda/src/models/currency_list_model.dart';
import 'package:conversor_de_moeda/src/repositories/currency_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final repository = CurrencyRepository();

  test('Deve trazer a cotação atual de várias moedas', () async {
    List<CurrencyListModel> listCurrencies = await repository.fetchCurrencyList();
    print(listCurrencies.elementAt(0).name);
    print(listCurrencies.elementAt(0).value);
    print(listCurrencies.length);
  });
}
