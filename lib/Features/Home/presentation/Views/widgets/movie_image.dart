import 'package:filmy/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: double.infinity,
        height: 210,
        child: Image.asset(AssetsData.test, fit: BoxFit.cover),
      ),
    );
  }
}
