import 'package:flutter/material.dart';

class SelectableTextExample extends StatelessWidget {
  const SelectableTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText(
          "IT-Квантум 2026",
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
