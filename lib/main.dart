import 'package:flutter/material.dart';
import 'package:weaterapp/scaffold_page.dart';

void main() {
  runApp(const MyApp());
}
// Types of widges
// 1. Stateless widges
// 2. Statefull widges
// 3. Inherited widges

// States

// Types of design
// 1. Material design(BY GOOGLE)
// 2. Cupertino design(BY APPLE)

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterPage(),
    );
  }
}
