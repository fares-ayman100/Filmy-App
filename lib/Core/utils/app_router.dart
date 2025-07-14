import 'package:filmy/Features/Home/presentation/Views/home_view.dart';
import 'package:filmy/Features/Home/presentation/Views/movie_details_view.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/main_scaffold.dart';
import 'package:filmy/Features/Search/presentation/views/search_view.dart';
import 'package:filmy/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kPersonView = '/personView';
  static const kSearchView = '/searchView';
  static const kFavouriteView = '/FavouritView';
  static const kMovieDetailsView = '/MovieDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      ShellRoute(
        builder: (context, state, child) => MainScaffold(child: child,),
        routes: [
          GoRoute(
            path: kHomeView,
            builder: (context, state) => HomeView(),
          ),
          GoRoute(
            path: kSearchView,
            builder: (context, state) => SearchView(),
          ),
          GoRoute(
            path: kFavouriteView,
            builder: (context, state) => Scaffold(
              body: Center(child: Text("Favourite")),
            ),
          ),
          GoRoute(
            path: kPersonView,
            builder: (context, state) => Scaffold(
              body: Center(child: Text("Profile")),
            ),
          ),
        ],
      ),
    ],
  );
}
