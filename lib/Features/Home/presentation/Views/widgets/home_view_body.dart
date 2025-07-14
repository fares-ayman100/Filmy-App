import 'package:filmy/Core/utils/styles.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/custom_app_bar.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/grid_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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

