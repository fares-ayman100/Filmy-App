import 'package:filmy/constant.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 32),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BottomNavigationBar(
          backgroundColor: kBottomNavigationColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          elevation: 0,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 36),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 36),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 36),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 36),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
