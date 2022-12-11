// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notebook_app/style/app_style.dart';
import 'package:pixelarticons/pixel.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    int colorID = Random().nextInt(AppStyle.cardColors.length);
    return Container(
      margin: EdgeInsets.all(10.0),
      height: height,
      width: width,
      padding: EdgeInsets.all(
        8.0,
      ),
      decoration: BoxDecoration(
        color: AppStyle.cardColors[colorID].withOpacity(0.3),
      ),
    );
  }
}
