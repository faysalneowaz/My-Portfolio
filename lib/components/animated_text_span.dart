import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:protfolioweb/constant.dart';
import 'package:protfolioweb/responsive.dart';

class AnimatedTextSpan extends StatelessWidget {
  const AnimatedTextSpan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover My Amazing \nwork space",
            style: Responsive.isDesktop(context)
                ? Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white)
                : Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          if (Responsive.isMobileLarge(context))
            const SizedBox(
              height: defaultPadding / 2,
            ),
          MyAnimatedText(),
          if (Responsive.isMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
        ],
      ),
    );
  }
}

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(
                width: defaultPadding / 2,
              ),
            Text("I Build ", style: Theme.of(context).textTheme.subtitle1!),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.subtitle1!,
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText("responsive web and mobile app. ",
                      speed: Duration(milliseconds: 60)),
                  TyperAnimatedText("complete e-commerce app UI. ",
                      speed: Duration(milliseconds: 60)),
                  TyperAnimatedText("chat app with dark and light theme. ",
                      speed: Duration(milliseconds: 60)),
                ],
              ),
            ),
            if (!Responsive.isMobileLarge(context))
              SizedBox(
                width: defaultPadding / 2,
              ),
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          ],
        ),
        // Row(
        //   children: [
        //     if (!Responsive.isMobileLarge(context)) JavaCodedText(),
        //     if (!Responsive.isMobileLarge(context))
        //       const SizedBox(width: defaultPadding / 2),
        //     Text("I Build ", style: Theme.of(context).textTheme.subtitle1!),
        //     DefaultTextStyle(
        //       style: Theme.of(context).textTheme.subtitle1!,
        //       child: AnimatedTextKit(
        //         animatedTexts: [
        //           TyperAnimatedText("responsive mobile app. ",
        //               speed: Duration(milliseconds: 60)),
        //           TyperAnimatedText("complete e-commerce app UI. ",
        //               speed: Duration(milliseconds: 60)),
        //           TyperAnimatedText("chat app with dark and light theme. ",
        //               speed: Duration(milliseconds: 60)),
        //         ],
        //       ),
        //     ),
        //     if (!Responsive.isMobileLarge(context))
        //       SizedBox(
        //         width: defaultPadding / 2,
        //       ),
        //     if (!Responsive.isMobileLarge(context)) JavaCodedText(),
        //   ],
        // ),
      ],
    );
  }
}

class JavaCodedText extends StatelessWidget {
  const JavaCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: "<", style: TextStyle(color: Colors.white), children: [
        TextSpan(text: "Java", style: TextStyle(color: primaryColor)),
        TextSpan(text: "> ", style: TextStyle(color: Colors.white)),
      ]),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: "<", style: TextStyle(color: Colors.white), children: [
        TextSpan(text: "Flutter", style: TextStyle(color: primaryColor)),
        TextSpan(text: "> ", style: TextStyle(color: Colors.white)),
      ]),
    );
  }
}
