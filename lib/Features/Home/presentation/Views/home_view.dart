import 'package:filmy/Features/Home/presentation/Views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: HomveViewBody()));
  }
}
