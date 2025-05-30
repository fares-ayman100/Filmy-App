import 'package:filmy/Features/splash/presentation/views/splash_view.dart';
import 'package:filmy/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FilmyApp());
}

class FilmyApp extends StatelessWidget {
  const FilmyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}


