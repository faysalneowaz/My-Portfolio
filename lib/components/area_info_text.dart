import 'package:flutter/material.dart';
import 'package:protfolioweb/constant.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({Key? key, this.title, this.description})
      : super(key: key);

  final String? title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(description!),
        ],
      ),
    );
  }
}