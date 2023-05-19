// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;
  double size;

  StarRating({super.key, this.starCount = 5, this.rating = .0, required this.onRatingChanged, required this.color, this.size =0});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (size ==0) size=0.01* MediaQuery.of(context).size.width;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
        size: size,
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
        size: size,
      );
    } else {
       icon = new Icon(
        Icons.star,
        color: color ?? Theme.of(context).primaryColor,
        size: size,
      );
    }
    return new InkResponse(
      onTap: onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(children: new List.generate(starCount, (index) => buildStar(context, index)));
  }
}

// return new StarRating(
//       rating: rating,
//       onRatingChanged: (rating) => setState(() => this.rating = rating),
//     );