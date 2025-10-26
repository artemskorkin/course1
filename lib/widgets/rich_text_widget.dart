import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: const TextSpan(
            // Список составных частей строки текста
            children: [
              TextSpan(
                text: "Flutter ",
                style: TextStyle(color: Colors.blue, fontSize: 48.0),
              ),
              TextSpan(
                text: "Крутой ",
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: "Фреймворк!",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ), //TextSpan
            ],
          ), // TextSpan
        ), // RichText
      ), // Center
    ); // Scaffold
  }
}