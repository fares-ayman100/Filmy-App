import 'package:filmy/Features/Search/presentation/views/widgets/search_veiw_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SearchViewBody()));
  }
}
