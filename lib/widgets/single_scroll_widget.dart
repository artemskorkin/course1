import 'package:flutter/material.dart';

class ScrollExample extends StatelessWidget {
  const ScrollExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(width: 250, height: 250, color: Colors.blue[300]),
          Container(width: 250, height: 250, color: Colors.green[300]),
          Container(width: 250, height: 250, color: Colors.red[300]),
        ],
      ),
    );
  }
}