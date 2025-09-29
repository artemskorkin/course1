import 'package:flutter/material.dart';
import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      title: "Flutter App",
      theme: AppTheme.lightTheme(),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/pizza.png", width: 250),
              Text("Вкусная пицца", style: Theme.of(context).textTheme.headlineMedium
              ),
              ElevatedButton(
                onPressed: () {
                  print("Вы купили пиццу! Спасибо за заказ!");
                },
                child: Text("Купить", 
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
