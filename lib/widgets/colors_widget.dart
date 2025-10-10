import 'package:flutter/material.dart';

class ColorsExample extends StatelessWidget {
  final double width, height;
  const ColorsExample({super.key, this.width = 240, this.height = 320});

  @override
  Widget build(BuildContext context) {
    Color color1 = const Color(0xFFFFC107);
    Color color2 = const Color.fromARGB(0xFF, 0xFF, 0xC1, 0x07);
    Color color3 = const Color.fromARGB(255, 255, 193, 7);
    Color color4 = const Color.fromRGBO(255, 193, 7, 1.0);

    Color color5 = Colors.amber.withAlpha(128);
    return Scaffold(
      appBar: AppBar(title: const Text("Работа с цветом")),
      body: Center(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(color: color1),
        ),
      ),
    );
  }
}

class ColorsExample2 extends StatelessWidget {
  const ColorsExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // Создать список из 10 элементов
      children: List.generate(10, (index) {
        return Expanded(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.amber[index * 100],
            child: Text("amber[${index * 100}]"),
          ),
        );
      }),
    );
  }
}
