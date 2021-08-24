import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protfolioweb/components/knowledge_text.dart';
import 'package:protfolioweb/constant.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "Java, XML"),
        KnowledgeText(text: "HTML, CSS"),
        KnowledgeText(text: "Nginx Server Configuration"),
        KnowledgeText(text: "Wordpress Customization"),
      ],
    );
  }
}
