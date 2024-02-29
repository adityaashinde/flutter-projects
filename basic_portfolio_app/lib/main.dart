import 'package:flutter/material.dart';
import 'package:basic_portfolio_app/portfolio_Page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Portfolio(),
    );
  }
}
