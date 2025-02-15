import 'package:flutter/material.dart';
import 'package:focus/page/register.dart';
import './mainpage.dart';
import './page/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainpage(),
    );
  }
}
