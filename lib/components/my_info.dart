import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: ExactAssetImage("assets/images/myimage.jpg"),
            ),
            Spacer(),
            Text(
              "Md Faysal Neowaz",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Native Android Developer\n Flutter Developer \n Founder of Code Spec",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            Spacer(
              flex: 2,
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
