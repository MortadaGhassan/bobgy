import 'package:flutter/material.dart';

extension SizeExt on num {
  double get h => this * SizeConfig.screenHeight / 100;
  double get w => this * SizeConfig.screenWidth / 100;
  double get sp => this * (SizeConfig.screenHeight / 3.2) / 100;
}

class SizeConfig {
  static double font32 = 32;
  static double font28 = 28;
  static double font24 = 24;
  static double font22 = 22;
  static double font20 = 20;
  static double font18 = 18;
  static double font16 = 16;
  static double font15 = 15;
  static double font14 = 14;
  static double font13 = 13;
  static double font12 = 12;
  static double font11 = 11;
  static double font10 = 10;
  static double font9 = 9;
  static double font8 = 8;
  static double padding2 = 2;
  static double padding4 = 4;
  static double padding8 = 8;
  static double padding12 = 12;
  static double padding16 = 16;
  static double padding24 = 24;
  static double padding32 = 32;
  static double _screenWidth = 0;
  static double _screenHeight = 0;
  static double _blockWidth = 0;
  static double _blockHeight = 0;
  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightMultiplier = 0;
  static double widthMultiplier = 0;
  static double screenWidth = 0;
  static double screenHeight = 0;

  void init(BoxConstraints constraints) {
    _screenWidth = constraints.maxWidth;
    _screenHeight = constraints.maxHeight;

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;

    font32 = 3.8 * textMultiplier;
    font28 = 3.3 * textMultiplier;
    font24 = 2.85 * textMultiplier;
    font22 = 2.66 * textMultiplier;
    font20 = 2.35 * textMultiplier;
    font18 = 2.22 * textMultiplier;
    font16 = 1.9 * textMultiplier;
    font15 = 1.77 * textMultiplier;
    font14 = 1.66 * textMultiplier;
    font13 = 1.55 * textMultiplier;
    font12 = 1.46 * textMultiplier;
    font11 = 1.3 * textMultiplier;
    font10 = 1.19 * textMultiplier;
    font9 = 1.05 * textMultiplier;
    font8 = 0.95 * textMultiplier;

    padding2 = 0.25 * textMultiplier;
    padding4 = 0.5 * textMultiplier;
    padding8 = textMultiplier;
    padding12 = 1.5 * textMultiplier;
    padding16 = 2 * textMultiplier;
    padding24 = 3 * textMultiplier;
    padding32 = 4 * textMultiplier;

    screenWidth = _screenWidth;
    screenHeight = _screenHeight;
  }
}
