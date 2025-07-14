import 'package:filmy/Core/utils/styles.dart';
import 'package:filmy/Features/Home/presentation/Views/widgets/movie_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsSearchMovie extends StatelessWidget {
  const DetailsSearchMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Prison Break',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Styles.font26WhiteSemiBold,
        ),
        Row(
          children: [
            Text('Rating', style: Styles.font24GreyNormal),
            const SizedBox(width: 10),
            MovieRating(size: 30, textStyle: Styles.font20GreyNormal),
          ],
        ),
        const SizedBox(height: 5),
    
        Row(
          children: [
            Icon(Icons.calendar_month, color: Colors.grey, size: 28),
            Text(' 2012', style: Styles.font20GreyNormal),
          ],
        ),
        const SizedBox(height: 5),
    
        Row(
          children: [
            Icon(Icons.access_time_filled, color: Colors.grey, size: 28),
            Text(' 148 minutes', style: Styles.font20GreyNormal),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const Icon(FontAwesomeIcons.film, color: Colors.grey, size: 24),
            Text(' Action', style: Styles.font20GreyNormal),
          ],
        ),
      ],
    );
  }
}
