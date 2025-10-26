import 'package:flutter/material.dart';

class Proba1 extends StatelessWidget {
  const Proba1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/flutter.webp",
          width: double.infinity,
          height: 180,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 15.0,
            vertical: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flutter Course 2025",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                "Flutter — это фреймворк с открытым исходным кодом для создания кроссплатформенных приложений, разработанный компанией Google.",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 15),
              Text(
                "Он позволяет разрабатывать приложения для мобильных устройств (iOS и Android), веб-приложения (Flutter Web), а также настольные приложения (Windows, macOS, Linux) с использованием единой кодовой базы.",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 15),
              Text(
                "Основные особенности Flutter",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.blue),
                  SizedBox(width: 10,),
                  Text(
                    "Язык программирования Dart",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.blue),
                  SizedBox(width: 10,),
                  Text(
                    "Единая кодовая база",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.blue),
                  SizedBox(width: 10,),
                  Text(
                    "Мультиплатформенность",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.blue),
                  SizedBox(width: 10,),
                  Text(
                    "Высокая производительность",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
               Row(
                children: [
                  Icon(Icons.favorite, color: Colors.blue),
                  SizedBox(width: 10,),
                  Text(
                    "Горячая перезагрузка",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
