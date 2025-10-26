import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        width: 300,
        height: 200,
        child: Image.asset('assets/images/pizza.png', fit: BoxFit.cover),
      ),
    );
  }
}

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite, color: Colors.red, size: 50),
          SizedBox(width: 10),
          Text("Like", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
