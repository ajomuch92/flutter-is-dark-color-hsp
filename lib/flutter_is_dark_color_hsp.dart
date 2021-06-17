library flutter_is_dark_color_hsp;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_is_dark_color_hsp/constants.dart';

/// Function to determine if a color is dark tone. It's based on HSP Color Model
/// color: Argument to determine its status
bool isDarkHsp(Color color) {
  int _redValue = color.red;
  int _greenValue = color.green;
  int _blueValue = color.blue;
  double _hsp = sqrt(rConstant * pow(_redValue, 2) +
      gConstant * pow(_greenValue, 2) +
      bConstant * pow(_blueValue, 2));
  return _hsp < hspBoundary;
}

/// Function to determine if a color is light tone. It's based on HSP Color Model
/// color: Argument to determine its status
bool isLightHsp(Color color) {
  return !isDarkHsp(color);
}
