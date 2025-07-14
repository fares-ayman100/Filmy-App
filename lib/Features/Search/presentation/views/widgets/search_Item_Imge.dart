import 'package:filmy/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class SearchItemImage extends StatelessWidget {
  const SearchItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: 130,
        height: 170,
        child: Image.asset(AssetsData.test, fit: BoxFit.cover),
      ),
    );
  }
}
