import 'package:flutter/material.dart';
import 'package:protfolioweb/components/animared_linner_progress_indicator.dart';
import 'package:protfolioweb/constant.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Language", style: Theme.of(context).textTheme.subtitle2,),
        ),
        AnimatedlinnerProgressIndicator(label: "Bangla",parcentage: 1.00,),
        AnimatedlinnerProgressIndicator(label: "English",parcentage: .80,),
        AnimatedlinnerProgressIndicator(label: "Hindi",parcentage: .52,),
      ],
    );
  }
}
