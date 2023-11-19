import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  final double height, width, diagonal;
  Responsive(
      {required this.height, required this.width, required this.diagonal});

  factory Responsive.of(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final sized = mediaQueryData.size;
    final diagonal =
    math.sqrt(math.pow(sized.width, 2) + math.pow(sized.height, 2));
    return Responsive(
        height: sized.height, width: sized.width, diagonal: diagonal);
  }

  double heightPercent(double percent) {
    return height * percent / 100;
  }
  double widthPercent(double percent) {
    return width * percent / 100;
  }
  double diagonalPercent(double percent) {
    return diagonal * percent / 100;
  }
}