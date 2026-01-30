import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project 4 Flutter Track',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
