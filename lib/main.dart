import 'package:flutter/material.dart';
import 'package:flutter_application_1/stateful_widgets/s1_stateful_widget.dart';
import 'package:flutter_application_1/stateful_widgets/s2_stateful_widget.dart';
import 'package:flutter_application_1/widgets/proba2.dart';
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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFBF098), Color(0xFF6FD6FF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(child: TrackCard()),
        ),
      ),
    );
  }
}
