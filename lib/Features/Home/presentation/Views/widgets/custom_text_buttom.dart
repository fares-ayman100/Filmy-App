import 'package:filmy/Core/utils/styles.dart';
import 'package:filmy/constant.dart';
import 'package:flutter/material.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Container(
        width: 150,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: kButtomColor,
        ),
        child: MaterialButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.play_arrow, size: 32),
              Text('Trailer', style: Styles.font24WhiteBold),
            ],
          ),
        ),
      ),
    );
  }
}
