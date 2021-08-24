import 'package:flutter/material.dart';
import 'package:protfolioweb/constant.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({Key? key, required this.value, required this.text})
      : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: value),
        duration: Duration(seconds: 1),
        builder: (context, value, child) => Text(
              "$value" + "$text",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: primaryColor),
            ));
  }
}
