import 'package:filmy/Features/Search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:
          (context, builer) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SearchListViewItem(),
          ),
      itemCount: 10,
    );
  }
}
