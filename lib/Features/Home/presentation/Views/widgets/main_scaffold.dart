import 'package:filmy/Core/utils/app_router.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScaffold extends StatefulWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int selectedIndex = 0;
  List<String> routes = [
    AppRouter.kHomeView,
    AppRouter.kSearchView,
    AppRouter.kFavouriteView,
    AppRouter.kPersonView,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          context.go(routes[index]);
        },
      ),
    );
  }
}
