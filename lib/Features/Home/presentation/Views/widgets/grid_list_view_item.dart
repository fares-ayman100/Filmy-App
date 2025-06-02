import 'package:filmy/Core/utils/styles.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/movie_image.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/movie_rating.dart';
import 'package:flutter/material.dart';

class GridListViewItem extends StatelessWidget {
  const GridListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieImage(),
        const SizedBox(height: 10),
        Text(
          'Prison Break',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Styles.font24WhiteBold,
        ),
        MovieRating(),
      ],
    );
  }
}

