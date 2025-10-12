import 'package:flutter/material.dart';

class ListViewExample1 extends StatelessWidget {
  const ListViewExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(title: Text("Заголовок 1")),
        ListTile(title: Text("Заголовок 2")),
        ListTile(title: Text("Заголовок 3")),
        ListTile(title: Text("Заголовок 4")),
        ListTile(title: Text("Заголовок 5")),
        ListTile(title: Text("Заголовок 6")),
        ListTile(title: Text("Заголовок 7")),
        ListTile(title: Text("Заголовок 8")),
        ListTile(title: Text("Заголовок 9")),
        ListTile(title: Text("Заголовок 10")),
        ListTile(title: Text("Заголовок 11")),
        ListTile(title: Text("Заголовок 12")),
        ListTile(title: Text("Заголовок 13")),
        ListTile(title: Text("Заголовок 14")),
        ListTile(title: Text("Заголовок 15")),
        ListTile(title: Text("Заголовок 16")),
        ListTile(title: Text("Заголовок 17")),
        ListTile(title: Text("Заголовок 18")),
        ListTile(title: Text("Заголовок 19")),
        ListTile(title: Text("Заголовок 20")),
        ListTile(title: Text("Заголовок 21")),
        ListTile(title: Text("Заголовок 22")),
      ],
    );
  }
}

class ListViewExample2 extends StatelessWidget {
  const ListViewExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 200,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.star),
          title: Text("Элемент ${index + 1}"),
        );
      },
    );
  }
}

// Эффективный конструктор ListView.separated + Разделители элементов
class ListViewExample3 extends StatelessWidget {
  const ListViewExample3({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 200,
      separatorBuilder: (context, index) => Divider(
        color: Colors.black, // Цвет линии
        thickness: 0.2, // Толщина линии
        height: 1, // Высота разделителя
      ),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('Элемент ${index + 1}'),
        );
      },
    );
  }
}

class ListViewExample4 extends StatelessWidget {
  const ListViewExample4({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Chip(
            label: Text("Элемент ${index + 1}"),
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(16),
          ),
        );
      },
    );
  }
}
