import 'package:flutter/material.dart';
import 'package:protfolioweb/components/recomnedation_card.dart';
import 'package:protfolioweb/constant.dart';
import 'package:protfolioweb/models/Recommendation.dart';

class MyRecomendation extends StatelessWidget {
  const MyRecomendation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recomendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecomendationCard(
                    recommendation: demo_recommendations[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
