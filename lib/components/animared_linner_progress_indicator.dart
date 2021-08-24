import 'package:flutter/material.dart';
import 'package:protfolioweb/constant.dart';

class AnimatedlinnerProgressIndicator extends StatelessWidget {
  const AnimatedlinnerProgressIndicator({Key? key,required this.parcentage,required this.label}) : super(key: key);

  final double parcentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: parcentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                ),
              ],
            ),
            SizedBox(height: defaultPadding / 2,),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}