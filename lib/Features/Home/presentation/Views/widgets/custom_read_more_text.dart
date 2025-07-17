import 'package:filmy/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CustomReadMoreText extends StatelessWidget {
  const CustomReadMoreText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      'The canvas element is an element defined in HTML code using width and height attributes. The real power of the canvas element, however, is accomplished by taking advantage of the HTML5 Canvas API. This API is used by writing JavaScript that can access the canvas area through a full set of drawing functions, thus allowing for dynamically generated graphics.',
      trimLines: 5,
      colorClickableText: Colors.blue,
      trimMode: TrimMode.Line,
      trimCollapsedText: ' More',
      trimExpandedText: ' Less',
      moreStyle: Styles.font26WhiteSemiBold.copyWith(color: Colors.blue),
      lessStyle: Styles.font26WhiteSemiBold.copyWith(color: Colors.blue),
      style: Styles.font20GreyNormal.copyWith(
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.left,
    );
  }
}
