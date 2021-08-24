import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protfolioweb/constant.dart';


class KnowledgeText extends StatelessWidget {
  const KnowledgeText({Key? key, this.text}) : super(key: key);
   final String? text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(bottom: defaultPadding /2,),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding /2,),
          Text(text!)
        ],
      ),
    );
  }
}
