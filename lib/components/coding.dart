import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protfolioweb/components/animared_linner_progress_indicator.dart';
import 'package:protfolioweb/constant.dart';

class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: Theme.of(context).textTheme.subtitle2,),
        ),
        AnimatedlinnerProgressIndicator(label: "Dart",parcentage: 0.8,),
        AnimatedlinnerProgressIndicator(label: "Java",parcentage: 0.92,),
        AnimatedlinnerProgressIndicator(label: "Dotnet",parcentage: 0.62,),
        AnimatedlinnerProgressIndicator(label: "C",parcentage: 0.98,),
      ],
    );
  }
}
