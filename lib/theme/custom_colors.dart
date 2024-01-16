// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';

/// CustomColors
class CustomColors {
  /// App / Client Specific
  static Color primaryColorLight = const Color(0xff1e578a);
  static Color primaryColorDark = const Color(0xff6398d3);
  static Color secondaryColorLight = const Color(0xffb29344);
  static Color secondaryColorDark = const Color(0xffccac5a);
  /// Theme Specific
  static Color scaffoldBackgroundColorLight = const Color(0xffffffff);
  static Color scaffoldBackgroundColorDark = const Color(0xff171717);
  static Color canvasColorLight = const Color(0xff171717);
  static Color canvasColorDark = const Color(0xffffffff);
  static Color shadowColorLight = const Color(0xfff5f5f5);
  static Color shadowColorDark = const Color(0xff262626);
  static Color splashColorLight = const Color(0xff171717);
  static Color splashColorDark = const Color(0xffffffff);
  static Color hintColorLight = const Color(0xff171717);
  static Color hintColorDark = const Color(0xffffffff);
  static Color highlightColorLight = const Color(0xff4591c7);
  static Color highlightColorDark = const Color(0xff5db1ec);
  static Color focusColorLight = const Color(0xffd61108);
  static Color focusColorDark = const Color(0xfffa2a21);
  /// Widgets
  static Color greyContainer = const Color(0xfff5f5f5).withOpacity(.5);
  static Color cardColorLight = const Color(0xfff5f5f5);
  static Color cardColorDark = const Color(0xff232323);
  static Color elevatedButtonLight = const Color(0xfff0f3f5);
  static Color elevatedButtonDark = const Color(0xff484f52);

  static const Color buttonWidgetColor1 = Color(0xff48c1d0);
  static const Color buttonWidgetColor2 = Color(0xff238df0);
  /// Socials
  static Color facebook = const Color(0xff1b34cf);
  static Color instagram = const Color(0xfff5185c);
  static Color twitter = const Color(0xff238df0);
  static Color linkedin = const Color(0xff2c65cd);
  static Color youtube = const Color(0xffdd2a36);
  /// General Colors
  static const Color transparent = Color(0x00ffffff);
  static const Color lightGrey = Color(0xffefefef);
  static const Color grey = Color(0xff5f5f5f);
  static const Color darkGrey = Color(0xff222222);
  static const Color blue = Color(0xff1090fc);
  static const Color lightBlue = Color.fromRGBO(44, 168, 255, 1.0);
  static const Color accentColor = Color(0xff36c3c4);
  static const Color green = Color(0xff2cc237);
  static const Color red = Color(0xffd61108);
  static const Color orange = Color(0xfff57745);
  static const Color yellow = Color(0xffe2c319);
  static const Color purple = Color(0xffae1bb3);
  static const Color muted = Color.fromRGBO(136, 152, 170, 1.0);
  static const Color dividerLight = Color(0x55f3f3f3);
  static const Color dividerDark = Color(0x55222222);
}

/// Container Widgets Gradients
List<Color> greyContainerGradient = <Color>[
  const Color(0xffa4a4a4).withOpacity(0.5),
  const Color(0xffe3f5f6).withOpacity(0.5),
];

List<Color> blueContainerGradient = <Color>[
  const Color(0xff48c1d0).withOpacity(0.9),
  const Color(0xff238df0).withOpacity(0.9),
];

List<Color> blackContainerGradient = <Color>[
  const Color(0xff363636).withOpacity(0.9),
  const Color(0xff252525).withOpacity(0.9),
];
