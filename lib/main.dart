import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todolist/colors/colors.dart';
import 'animsatici/anasayfa.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));//üstteki bildirim çubuğunu transparan yaptım uygulmayla bütünleşsin diye
    return MaterialApp(
      title: 'Anımsatıcılar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light( ),
      home: Anasayfa(),
    );
  }
}
