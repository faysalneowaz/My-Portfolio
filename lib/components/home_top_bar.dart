import 'package:flutter/material.dart';
import 'package:protfolioweb/components/animated_text_span.dart';
import 'package:protfolioweb/constant.dart';
import 'package:protfolioweb/responsive.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(.66),
          ),
          AnimatedTextSpan(),
        ],
      ),
    );
  }
}
