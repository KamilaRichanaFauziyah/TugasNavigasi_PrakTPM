import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Navigasi',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xf20F4EDB),
          title: Text("Aplikasi Pariwisata"),
        ),
        body: SplashScreen(),
      ),
    );
  }
}

