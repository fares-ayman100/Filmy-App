import 'package:filmy/Features/Home/presentation/Views/home_view.dart';
import 'package:filmy/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kPersonView = '/homeView';
  static const kSearchView = '/homeView';
  static const kFavouriteView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(
        path: AppRouter.kHomeView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
