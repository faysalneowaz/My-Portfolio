import 'package:flutter/material.dart';
import 'package:protfolioweb/constant.dart';
import 'package:protfolioweb/models/Recommendation.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({Key? key, required this.recommendation})
      : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              recommendation.source!,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              recommendation.text!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            )
          ],
        ),
      ),
    );
  }
}
