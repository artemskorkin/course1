import 'package:flutter_application_1/pizza/pizza_card.dart';
import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SizedBox(
            width: 150, 
            height: 350, 
            child: PizzaCard(),
          ),
          PizzaCard(),
          PizzaCard(),
        ],
      ),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: Row(
        children: [
          ColorBox(width: 100, height: 100, color: Colors.red[400]),
          Flexible(child: ColorBox(width: 100, height: 100, color: Colors.green[400],)),
          Flexible(child: ColorBox(width: 100, height: 100, color: Colors.blue[400],)),
          
        ],
      ),
    );
  }
}


class ColorBox extends StatelessWidget {
  final double width, height;
  final Color? color;

  const ColorBox({super.key, 
    required this.width,
    required this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
