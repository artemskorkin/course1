import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myColorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        colorScheme: myColorScheme,
        appBarTheme: AppBarTheme(backgroundColor: myColorScheme.inversePrimary),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/pizza.webp", width: 250),
              const Text("Вкусная пицца"),
              ElevatedButton(
                onPressed: () {
                  print("Вы купили пиццу! Спасибо за заказ!");
                },
                child: const Text("Купить"),
              ),
              FlutterLogo(size: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
