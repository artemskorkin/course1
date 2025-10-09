import 'package:flutter/material.dart';


class PizzaCard extends StatelessWidget {
  final double height;
  const PizzaCard({super.key, this.height=200});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/pizza.webp", width: 80),
          SizedBox(height: 10),
          Text("Вкусная пицца", style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              print("Вы купили пиццу! Спасибо за заказ!");
            },
            child: Text(
              "Купить",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}