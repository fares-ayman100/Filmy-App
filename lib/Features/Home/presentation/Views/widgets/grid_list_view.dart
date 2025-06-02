import 'package:filmy/Features/Home/presentation/Views/widgets/grid_list_view_item.dart';
import 'package:flutter/material.dart';

class GridListView extends StatelessWidget {
  const GridListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 5,
        childAspectRatio: .56,
      ),
      itemBuilder: (context, index) {
        return GridListViewItem();
      },
    );
  }
}
