// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CurrencyLineElevatedButton extends StatelessWidget {
  const CurrencyLineElevatedButton({super.key, this.refreshView, this.convert});
  final void Function()? refreshView;
  final void Function()? convert;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Container()),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: ElevatedButton(
              onPressed: convert,
              child: const Text('Converter')),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 3,
            child: ElevatedButton.icon(
              onPressed: refreshView,
              icon: const Icon(Icons.refresh),
              label: const Text('Atualizar'),
            )),
      ],
    );
  }
}
