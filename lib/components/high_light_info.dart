import 'package:flutter/material.dart';
import 'package:protfolioweb/components/animated_counter.dart';
import 'package:protfolioweb/components/high_light.dart';
import 'package:protfolioweb/constant.dart';
import 'package:protfolioweb/responsive.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(value: 100, text: "+"),
                  label: "Subscribers",
                ),
                HighLight(
                  counter: AnimatedCounter(value: 50, text: "+"),
                  label: "Videos",
                ),
                HighLight(
                  counter: AnimatedCounter(value: 20, text: "+"),
                  label: "GitHub Projects",
                ),
                HighLight(
                  counter: AnimatedCounter(value: 1, text: "K"),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
