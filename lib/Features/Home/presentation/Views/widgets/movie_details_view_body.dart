import 'package:filmy/Core/utils/styles.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/custom_text_buttom.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/movie_rating.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/opacity_boster_movie.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/over_view_movie_text.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/poster_details.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/poster_movie.dart';
import 'package:flutter/material.dart';

class MovieDetailsViewBody extends StatelessWidget {
  const MovieDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  OpacityPoster(),
                  Poster(),
                  PosterDetails(),
                  Positioned(
                    bottom: 85,
                    child: MovieRating(
                      size: 28,
                      textStyle: Styles.font18WhiteSemiBold,
                    ),
                  ),
                  CustomTextButtom(),
                  
                  
                ],
              ),
              const SizedBox(height: 10),
              OverViewMovieText()
            ],
          ),
        ],
         
      ),
    );
  }
}

