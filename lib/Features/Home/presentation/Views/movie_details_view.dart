import 'package:filmy/Features/Home/presentation/Views/widgets/movie_details_view_body.dart';
import 'package:flutter/material.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: MovieDetailsViewBody()));
  }
}
