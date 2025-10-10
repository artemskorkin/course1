import 'package:flutter/material.dart';

class RoundedImageExample extends StatelessWidget {
  const RoundedImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/pizza.png"),
        radius: 150,
      ),
    );
  }
}

class RoundedImageExample2 extends StatelessWidget {
  const RoundedImageExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.blue,
        child: Text("F", style: TextStyle(fontSize: 30, color: Colors.white)),
      ),
    );
  }
}

class RoundedImageExample3 extends StatelessWidget {
  const RoundedImageExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.asset(
          "assets/images/pizza.png",
          width: 200,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class RoundedImageExample4 extends StatelessWidget {  
  const RoundedImageExample4({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return Center(  
      child: Container(  
        width: 300,  
        height: 300,  
        decoration: BoxDecoration(  
          shape: BoxShape.circle,  
          image: DecorationImage(  
            image: AssetImage("assets/images/paris.webp"),  
            fit: BoxFit.cover,  
          ),  
        ),  
      ),  
    );  
  }  
}

class RoundedImageExample5 extends StatelessWidget {  
  const RoundedImageExample5({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return Center(  
      child: ClipRRect(  
        // Радиус должен быть половина от ширины  
        borderRadius: BorderRadius.circular(150),  
        child: Image.asset(  
          "assets/images/paris.webp",  
          width: 300,  
          height: 300,  
          fit: BoxFit.cover,  
        ),  
      ),  
    );  
  }  
}