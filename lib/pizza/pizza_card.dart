import 'package:flutter/material.dart';

class PizzaCard extends StatelessWidget {
  final double height;
  const PizzaCard({super.key, this.height = 220});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: height,
      child: Card(
        margin: EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), 
                topRight: Radius.circular(12), 
              ),
              child: Image.asset(
                "assets/images/pizza.png",
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("Вкусная пицца"),
                subtitle: Text(
                  "Соус, пепперони, сыр",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: TextButton(
                onPressed: () {},
                child: Text("Купить"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

