import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:speedo_meter/constants.dart';

class MeterReadings extends CustomPainter {
  double pi = math.pi;


  double degreeToRadian(double degree) {
    return degree * pi / 180;
  }


  @override
  void paint(Canvas canvas, Size size) {
    var radius = size.width / 2;
   // S1
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text:Constants.s3, style: const TextStyle(color: Colors.red)),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr)
      ..layout(maxWidth: size.width);
    textPainter.paint(canvas, Offset(-30, size.height/2));



    // S2
    var dx = radius -
        (radius * math.cos(degreeToRadian(30))) -
        30 * math.cos(degreeToRadian(30));
    var dy = radius -
        (radius * math.sin(degreeToRadian(30))) -
        30 * math.tan(degreeToRadian(30));
    var offsetS2 = Offset(dx, dy);
    final TextPainter textPainter2 = TextPainter(
        text: TextSpan(text:Constants.s2, style: const TextStyle(color: Colors.red)),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr)
      ..layout(maxWidth: size.width / 2);
    textPainter2.paint(canvas, offsetS2);

    //S1
    dx = radius -
        (radius * math.cos(degreeToRadian(60))) -
        25 * math.cos(degreeToRadian(30));
    dy = radius -
        (radius * math.sin(degreeToRadian(60))) -
        32 * math.tan(degreeToRadian(30));
    var offsetS1 = Offset(dx, dy);
    final TextPainter textPainter3 = TextPainter(
        text: TextSpan(text:Constants.s1, style: const TextStyle(color: Colors.red)),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr)
      ..layout(maxWidth: size.width);
    textPainter3.paint(canvas, offsetS1);

    //PIVOT
    dx = size.width / 2 - 25;
    dy = -30;
    var offsetPivot = Offset(dx, dy);
    final TextPainter textPainter4 = TextPainter(
        text: TextSpan(text: Constants.pivot, style: const TextStyle(color: Colors.black)),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr)
      ..layout(maxWidth: size.width);
    textPainter4.paint(canvas, offsetPivot);



    //R3
    dx = size.width + 10;
    dy = size.height / 2;
    var offsetR3 = Offset(dx, dy);
    final TextPainter textPainter5 = TextPainter(
        text: TextSpan(text:Constants.r3, style: const TextStyle(color: Colors.green)),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr)
      ..layout(maxWidth: size.width);
    textPainter5.paint(canvas, offsetR3);

    //R2
    dx = radius + (radius * math.cos(degreeToRadian(25)));
    dy = radius - (radius * math.sin(degreeToRadian(40)));
    var offsetR2 = Offset(dx, dy);
    final TextPainter textPainter6 = TextPainter(
        text: TextSpan(text:Constants.r2, style: const TextStyle(color: Colors.green)),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr)
      ..layout(maxWidth: size.width);
    textPainter6.paint(canvas, offsetR2);

    //R1
    dx = radius + (radius * math.cos(degreeToRadian(60)));
    dy = radius - (radius * math.sin(degreeToRadian(90))) - 5;
    var offsetR1 = Offset(dx, dy);
    final TextPainter textPainter7 = TextPainter(
        text: TextSpan(text: Constants.r1, style: const TextStyle(color: Colors.green)),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr)
      ..layout(maxWidth: size.width);
    textPainter7.paint(canvas, offsetR1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}