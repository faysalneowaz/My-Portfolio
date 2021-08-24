import 'package:flutter/material.dart';
import 'package:protfolioweb/components/animated_circular_progress_indicator.dart';
import 'package:protfolioweb/constant.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(child: AnimatedCircularProgressIndicator(parcentage: 0.8,label: "Flutter",),),
            SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedCircularProgressIndicator(parcentage: 0.82,label: "Java",),),
            SizedBox(width: defaultPadding,),
            Expanded(child: AnimatedCircularProgressIndicator(parcentage: 0.6,label: "Firebase",),),
          ],
        ),
      ],
    );
  }
}
