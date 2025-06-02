import 'package:filmy/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow, size: 25),
        Text('9.5', style: Styles.font16WhiteSemiBold),
      ],
    );
  }
}
