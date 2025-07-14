import 'package:filmy/constant.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                fillColor: Colors.white,
                hintStyle: TextStyle(color: kHintTextColor, fontSize: 24),
                prefixIcon: Icon(Icons.search, color: kHintTextColor, size: 32),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
