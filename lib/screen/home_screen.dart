import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:protfolioweb/components/animated_text_span.dart';
import 'package:protfolioweb/components/high_light_info.dart';
import 'package:protfolioweb/components/home_top_bar.dart';
import 'package:protfolioweb/components/my_projects.dart';
import 'package:protfolioweb/components/my_recomendation.dart';
import 'package:protfolioweb/constant.dart';
import 'package:protfolioweb/models/Project.dart';
import 'package:protfolioweb/models/Recommendation.dart';
import 'package:protfolioweb/screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeTopBar(),
        HighLightInfo(),
        MyProjects(),
        MyRecomendation(),
      ],
    );
  }
}
