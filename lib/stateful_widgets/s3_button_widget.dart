import 'package:flutter/material.dart';

class ButtonsExample extends StatefulWidget {
  const ButtonsExample({super.key});

  @override
  State<ButtonsExample> createState() => _ButtonsExampleState();
}

class _ButtonsExampleState extends State<ButtonsExample> {
  int counter = 100;

  void _increaseCounter(int value) {
    setState(() {
      counter += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("\$ $counter BitCoins", style: TextStyle(fontSize: 22)),
        SizedBox(height: 20),

        // Дальше будут кнопки
        ElevatedButton(
          onPressed: () => _increaseCounter(1),
          child: Text("Получить \$1"),
        ),

        OutlinedButton(
          onPressed: () => _increaseCounter(5),
          child: Text("Получить \$5"),
        ),

        FilledButton(
          onPressed: () => _increaseCounter(10),
          child: Text("Получить \$10"),
        ),

        TextButton(
          onPressed: () => _increaseCounter(20),
          child: Text("Получить \$20"),
        ),

        IconButton(
          onPressed: () => _increaseCounter(50),
          icon: Icon(Icons.monetization_on),
          color: Colors.black87,
        ),
        SizedBox(height: 20),

        ElevatedButton.icon(
          onPressed: () => _increaseCounter(25),
          icon: Icon(Icons.attach_money),
          label: Text("Получить \$25"),
        ),
        OutlinedButton.icon(
          onPressed: () => _increaseCounter(30),
          icon: Icon(Icons.account_balance_wallet),
          label: Text("Получить \$30"),
        ),
      ],
    );
  }
}

class ButtonExample2 extends StatefulWidget {
  const ButtonExample2({super.key});

  @override
  State<ButtonExample2> createState() => _ButtonExample2State();
}

class _ButtonExample2State extends State<ButtonExample2> {
  void _printButtonMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CloseButton(
          onPressed: () => _printButtonMessage(context, "😎 CloseButto"),
        ),
        BackButton(
          onPressed: () => _printButtonMessage(context, "😎 BackButton"),
        ),
        MaterialButton(
          onPressed: () => _printButtonMessage(context, "😎 MaterialButton"),
          child: Text("Push me"),
        ),
      ],
    );
  }
}

class ButtonStyleExample extends StatelessWidget {
  const ButtonStyleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, // Цвет текста
            backgroundColor: Colors.blue[400], // Цвет фона
            // Внутренние отступы
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // Радиус скругления
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: null,
          child: Text("Заказать"),
        ),
      ],
    );
  }
}

class GestureDetectorExample extends StatefulWidget {  
  @override  
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState(); 
}  
  
class _GestureDetectorExampleState extends State<GestureDetectorExample> {  
  String message = "Тыкай по картинке";  
  
  _changeMessage(String newMessage) {  
    setState(() {  
      message = newMessage;  
    });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Column(  
      mainAxisAlignment: MainAxisAlignment.center,  
      children: [  
        Text(message, style: TextStyle(fontSize: 18)),  
        SizedBox(height: 20),  
        
        GestureDetector(  
          onTap: () => _changeMessage("onTap: Нажатие на объект"),  
          onDoubleTap: () => _changeMessage("onDoubleTap: Двойное нажатие"),  
          onLongPress: () => _changeMessage("onLongPress: Долгое нажатие"),  
          onPanUpdate: (details) => _changeMessage("${details.delta}"),  
  
          child: CircleAvatar(  
            backgroundImage: AssetImage("assets/images/music.jpg"),  
            radius: 150,  
          ),  
        ),  
      ],  
    );  
  }  
}

class InkWellExample extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Center(  
      child: Material(  
        borderRadius: BorderRadius.circular(12),  
        child: InkWell(  
          borderRadius: BorderRadius.circular(12),  
          splashColor: Colors.green[300],  
          onTap: () {},  
          child: SizedBox(  
            width: 200,  
            height: 200,  
            child: Center(child: Text('InkWell')),  
          ),  
        ),  
      ),  
    );  
  }  
}
