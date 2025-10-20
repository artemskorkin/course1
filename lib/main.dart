import 'package:flutter/material.dart';
import 'package:flutter_application_1/stateful_widgets/s3_button_widget.dart';
import 'package:flutter_application_1/stateful_widgets/s4_stack_widget.dart';
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
      home: Scaffold(body: StackExample4()),
    );
  }
}

