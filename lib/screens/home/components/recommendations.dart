import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/constants.dart';
import 'package:flutter_web_portfolio/models/Recommendation.dart';
import 'package:flutter_web_portfolio/screens/home/components/recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
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
            "Nothing",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            primary: false,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    recommendation: demo_recommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
