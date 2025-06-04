import 'package:filmy/Core/utils/app_router.dart';
import 'package:filmy/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kMovieDetailsView);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          width: double.infinity,
          height: 210,
          child: Image.asset(AssetsData.test, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
