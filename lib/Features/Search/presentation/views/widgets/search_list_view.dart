import 'package:filmy/Features/Search/presentation/views/widgets/details_search_movie.dart';
import 'package:filmy/Features/Search/presentation/views/widgets/search_Item_Imge.dart';
import 'package:flutter/material.dart';

class SearchListViewItem extends StatelessWidget {
  const SearchListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SearchItemImage(),
        const SizedBox(width: 25),
        DetailsSearchMovie(),
      ],
    );
  }
}
