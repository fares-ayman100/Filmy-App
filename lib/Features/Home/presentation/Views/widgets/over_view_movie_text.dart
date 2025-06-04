import 'package:filmy/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class OverViewMovieText extends StatelessWidget {
  const OverViewMovieText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'The canvas element is an element defined in HTML code using width and height attributes. The real power of the canvas element, however, is  accomplished by taking advantage of the HTML5 Canvas API. This API  is used by writing JavaScript that can access the canvas area through a full set of drawing functions, thus allowing for dynamically generated graphics.',
      style: Styles.font16WhiteMedium.copyWith(fontWeight: FontWeight.w400),
      textAlign: TextAlign.justify,
    );
  }
}
