import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protfolioweb/components/animated_circular_progress_indicator.dart';
import 'package:protfolioweb/components/area_info_text.dart';
import 'package:protfolioweb/components/coding.dart';
import 'package:protfolioweb/components/knowledge.dart';
import 'package:protfolioweb/components/language.dart';
import 'package:protfolioweb/components/my_info.dart';
import 'package:protfolioweb/components/skills.dart';
import 'package:protfolioweb/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenue extends StatefulWidget {
  const SideMenue({Key? key}) : super(key: key);

  @override
  _SideMenueState createState() => _SideMenueState();
}

class _SideMenueState extends State<SideMenue> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    description: "Bangladesh",
                  ),
                  AreaInfoText(
                    title: "City",
                    description: "Dhaka",
                  ),
                  AreaInfoText(
                    title: "Age",
                    description: "27",
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Language(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Knowledge(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Divider(),
                  TextButton(
                    onPressed: () {
                      launch(
                          "https://drive.google.com/file/d/1vHlYzw0dtr4MlYdgKjyx_ytQY4y18sUx/view?usp=sharing");
                    },
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          ),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          SvgPicture.asset("assets/icons/download.svg")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            launch("https://bd.linkedin.com/in/faysalneowaz");
                          },
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: () {
                            launch("https://github.com/faysalneowaz");
                          },
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () {
                            launch("https://twitter.com/neowazfaysal");
                          },
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
