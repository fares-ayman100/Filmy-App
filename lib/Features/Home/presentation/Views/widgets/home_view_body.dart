import 'package:filmy/Core/utils/app_router.dart';
import 'package:filmy/Core/utils/styles.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/custom_app_bar.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/custom_bottom_navigation_bar.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/grid_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
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
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          context.go(routes[index]);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Text('Popular Movie', style: Styles.font32WhiteSemibold),
              const SizedBox(height: 16),
              GridListView(),
            ],
          )
        ),
      ),
    );
  }
}

