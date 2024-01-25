import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String errorText;

  const ErrorMessage({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        errorText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
