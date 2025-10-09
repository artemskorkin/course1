import 'package:flutter_application_1/pizza/pizza_card.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Flutter App")),
      body: Center(
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            color: const Color.fromARGB(139, 33, 149, 243),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [PizzaCard(), PizzaCard(height: 250), PizzaCard()],
          ),
        ),
      ),
    );
  }
}