import 'package:flutter/material.dart';

class GridViewExample1 extends StatelessWidget {
  const GridViewExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // Количество колонок
      crossAxisSpacing: 10, // Расстояние между колонками
      mainAxisSpacing: 10, // Расстояние между строками

      padding: EdgeInsets.all(16),
      children: List.generate(9, (index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue[200],
          ),
          alignment: Alignment.center,
          child: Text('Элемент ${index + 1}'),
        );
      }),
    );
  }
}

class GridViewExample2 extends StatelessWidget {
  const GridViewExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100, // Максимальная ширина элемента
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(15, (index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue[200],
          ),
          alignment: Alignment.center,
          child: Text(
            'Элемент $index',
          ),
        );
      }),
    );
  }
}

class GridViewExample3 extends StatelessWidget {
  const GridViewExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1.5, // Соотношение сторон
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Text('Элемент $index'),
        );
      },
    );
  }
}
