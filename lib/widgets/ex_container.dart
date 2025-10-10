import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 5),
      ),
      child: Text(
        "Container", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
class ContainerExample2 extends StatelessWidget {
  const ContainerExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue[100],
        child: const Text(
          'IT-Квантум',
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}


class ContainerExample3 extends StatelessWidget {
  const ContainerExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Высоту и ширину можно регулировать вручную
      width: double.infinity, // Макс. возможная ширина
      height: 200.0,
      color: Colors.blue[100],
      child: const Text(
        'IT-Квантум',
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ContainerExample4 extends StatelessWidget {
  const ContainerExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Ширина контейнера 100% родителя
      width: double.infinity,
      height: 200.0,
      // Дочерний элемент по центру
      alignment: Alignment.center,
      color: Colors.blue[100],
      child: const Text('IT-Квантум'),
    );
  }
}

class ContainerExample5 extends StatelessWidget {
  const ContainerExample5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ширина контейнера 100% родителя
      height: 200.0, // Высота контейнера 100

      padding: const EdgeInsets.all(32.0), // внутренние отступы
      margin: const EdgeInsets.all(32.0), // внешние отступы

      color: Colors.blue[100], // Цвет фона контейнера
      child: const Text(
        'IT-Квантум',
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}




