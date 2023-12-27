import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uber/src/const/colors.dart';

import 'customClipper.dart';

class BezierContainer extends StatelessWidget {
  const BezierContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Transform.rotate(
      angle: -pi / 3.5,
      child: ClipPath(
        clipper: ClipPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.orange,
                Color.fromARGB(255, 246, 131, 74),
                Color.fromARGB(255, 240, 218, 185),
              ],
              stops: [
                0.2,
                1.0,
                2.0,
              ], // Adjust these values for a smoother gradient
            ),
          ),
        ),
      ),
    ));
  }
}
