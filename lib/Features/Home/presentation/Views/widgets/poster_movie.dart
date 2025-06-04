import 'package:filmy/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  const Poster({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(AssetsData.test, width: 250, fit: BoxFit.fitWidth),
    );
  }
}
