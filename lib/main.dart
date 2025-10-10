import 'package:flutter_application_1/pizza/home_widget.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';
import 'package:flutter_application_1/widgets/rich_text_widget.dart';
import 'package:flutter_application_1/widgets/image_widget.dart';
import 'package:flutter_application_1/widgets/colors_widget.dart';
import 'package:flutter_application_1/widgets/border_widget.dart';
import 'package:flutter_application_1/widgets/rounded_widget.dart';
import 'package:flutter/material.dart';
import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: AppTheme.lightTheme(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Виджет текст"),
        ),
        body: RoundedImageExample5(),
      )
    );
  }
}
