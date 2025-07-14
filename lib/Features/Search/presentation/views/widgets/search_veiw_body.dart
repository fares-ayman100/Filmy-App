import 'package:filmy/Features/Search/presentation/views/widgets/custom_text_field.dart';
import 'package:filmy/Features/Search/presentation/views/widgets/search_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            CustomTextField(),
            const SizedBox(height: 10),
            Expanded(child: SearchListView()),
          ],
        ),
      ),
    );
  }

}



