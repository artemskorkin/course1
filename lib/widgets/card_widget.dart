import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2, 
        color: Colors.white, 
        child: SizedBox(
          width: 310, 
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12)
                ),
                child: Image.asset("assets/images/paris.webp", width: double.infinity, height: 150, fit: BoxFit.cover,),
              ),ListTile(
                title: Text("die Paris ist sehr gross"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Text("PARIS VERY GUUUT"),
                    SizedBox(height: 8,),
                    Padding(padding: const EdgeInsets.only(bottom: 8.0), child: ElevatedButton(onPressed: (){}, child: const Text("Купить билет в PARIS")),)
                  ],
                ),

              )
            ],
          ),
        ),
      ));
  }
}


class CardTypesExample extends StatelessWidget {
  const CardTypesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 320, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card.outlined(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("card w border"),
                subtitle: Text("Card.outlined"),
              ),
            ),
            Card.filled(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Карточка с заполнением"),
                subtitle: Text("Card.filled"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}