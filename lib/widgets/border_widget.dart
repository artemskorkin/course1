import 'package:flutter/material.dart';

class BorderExample extends StatelessWidget {
  final double width, height;

  const BorderExample({super.key, this.width = 240, this.height = 320});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.red[50],
          border: Border(
            top: BorderSide(
              width: 5.0,
              color: Color.fromARGB(255, 255, 101, 101),
            ),
            left: BorderSide(
              width: 15.0,
              color: Color.fromARGB(255, 75, 225, 92),
            ),
            right: BorderSide(
              width: 25.0,
              color: Color.fromARGB(255, 61, 155, 237),
            ),
            bottom: BorderSide(
              width: 35.0,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}
