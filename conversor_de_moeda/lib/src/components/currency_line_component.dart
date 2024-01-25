// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:conversor_de_moeda/src/models/currency_list_model.dart';
import 'package:conversor_de_moeda/src/repositories/currency_repository.dart';
import 'package:flutter/material.dart';

class CurrencyLine extends StatelessWidget {
  final CurrencyRepository repository = CurrencyRepository();
  final List<CurrencyListModel> items;
  final CurrencyListModel selectedItem;
  final void Function(CurrencyListModel? model)? onChanged;
  final TextEditingController controller;

  CurrencyLine({super.key, required this.items, required this.selectedItem, required this.onChanged, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 64,
              child: DropdownButton(
                iconEnabledColor: Colors.amber,
                items: items
                    .map(
                      (e) => DropdownMenuItem(value: e, child: Text(e.name)),
                    )
                    .toList(),
                value: selectedItem,
                onChanged: onChanged,
                isExpanded: true,
                iconDisabledColor: Colors.amber,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 2,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber))),
            ))
      ],
    );
  }
}
