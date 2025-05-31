import 'package:filmy/Core/utils/app_router.dart';
import 'package:filmy/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FilmyApp());
}

class FilmyApp extends StatelessWidget {
  const FilmyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),

      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}


