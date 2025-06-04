import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PosterDetails extends StatelessWidget {
  const PosterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.calendar_month),
          Text(' 2012', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 10),
          Text('|', style: TextStyle(fontSize: 24)),
          const SizedBox(width: 10),
          Icon(Icons.access_time_filled),
          Text(' 148 minutes', style: TextStyle(fontSize: 18)),
          const SizedBox(width: 10),
          Text('|', style: TextStyle(fontSize: 24)),
          const SizedBox(width: 10),
          const Icon(FontAwesomeIcons.film),
          Text(' Action', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
