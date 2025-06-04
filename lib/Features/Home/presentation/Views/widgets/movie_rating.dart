import 'package:flutter/material.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({super.key, this.size, this.textStyle});
  final double? size;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow, size: size),
        Text('9.5', style: textStyle),
      ],
    );
  }
}
