import 'package:flutter/material.dart';
import 'views/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professor App',
      theme: ThemeData(
        primaryColor: const Color(0xFF213655),
        scaffoldBackgroundColor: const Color(0xFFFEF8F8),
      ),
      home: const LoginScreen(),
    );
  }
}
