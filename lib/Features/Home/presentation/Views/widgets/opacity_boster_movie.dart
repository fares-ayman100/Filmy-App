import 'package:filmy/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class OpacityPoster extends StatelessWidget {
  const OpacityPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .3,
      child: Image.asset(
        AssetsData.test,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.80,
        fit: BoxFit.cover,
      ),
    );
  }
}
