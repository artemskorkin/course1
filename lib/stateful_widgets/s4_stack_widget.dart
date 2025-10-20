import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: CircleAvatar(radius: 200, backgroundColor: Colors.red[200]),
        ),
        Center(
          child: CircleAvatar(radius: 150, backgroundColor: Colors.green[200]),
        ),
        Center(
          child: CircleAvatar(radius: 100, backgroundColor: Colors.blue[300]),
        ),
      ],
    );
  }
}

class StackExample2 extends StatelessWidget {
  const StackExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.blue),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(color: Colors.red, width: 50, height: 50),
        ),
      ],
    );
  }
}

class StackExample3 extends StatelessWidget {
  const StackExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350, 
        height: 350, 
        child: Stack(
          children: <Widget>[
            Image.asset('assets/images/music.jpg', fit: BoxFit.contain, width: double.infinity, height: double.infinity,),
            Positioned(bottom: 20, left: 20, child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5), 
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.7),
              ),
              child: Text(
                'Pashanim', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ))
          ],
        ),
      )
      );
  }
}

class StackExample4 extends StatelessWidget {
  const StackExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.yellow[100],
        margin: EdgeInsets.all(20.0),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                clipBehavior:
                    Clip.none, // Позволяет выходить бейджу за границы аватара
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/music.jpg'),
                  ),
                  Positioned(
                    top: -5,
                    right: -5,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      constraints: BoxConstraints(minHeight: 20, minWidth: 20),
                      child: Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 16,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Pashanim",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Онлайн",  
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),  
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
