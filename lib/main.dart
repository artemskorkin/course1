import 'package:flutter_application_1/pizza/pizza_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/gridview_widget.dart';
import 'package:flutter_application_1/widgets/listview_widget.dart';
import 'package:flutter_application_1/widgets/single_scroll_widget.dart';
import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Course",
      theme: AppTheme.lightTheme(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, 
          title: const Text("Изучаем Flutter"),
        ),
        body: GridViewExample3(),
      ),
    );
  }
}

