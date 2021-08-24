import 'package:flutter/material.dart';
import 'package:protfolioweb/components/project_card.dart';
import 'package:protfolioweb/constant.dart';
import 'package:protfolioweb/models/Project.dart';
import 'package:protfolioweb/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Project",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: MyProjectGridView(
              crossAsisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: MyProjectGridView(
              crossAsisCount: 2,
            ),
            tablet: MyProjectGridView(
              childAspectRatio: 1.1,
            ),
            desktop: MyProjectGridView()),
      ],
    );
  }
}

class MyProjectGridView extends StatelessWidget {
  const MyProjectGridView({
    Key? key,
    this.crossAsisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAsisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demo_projects.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAsisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
