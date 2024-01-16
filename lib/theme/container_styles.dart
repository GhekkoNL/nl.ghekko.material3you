// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'custom_colors.dart';

BoxDecoration blueContainerStyle = BoxDecoration(
  boxShadow: const [
    BoxShadow(blurRadius: 2),
  ],
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: blueContainerGradient,
  ),
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(4),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(20)
  ),
);

final greyContainerStyle = BoxDecoration(
  border: Border.all(color: Colors.grey.withOpacity(0.3)),
  gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: greyContainerGradient),
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(65),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4)
  ),
);

BoxDecoration whiteContainerStyle = BoxDecoration(
  border: Border.all(
      color: Colors.grey.withOpacity(0.3),
    width: 0.7,
  ),
  color: CustomColors.greyContainer,
  borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(10),
      topLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
      topRight: Radius.circular(10)),
);

BoxDecoration blackContainerStyle = BoxDecoration(
  boxShadow: const [
    BoxShadow(blurRadius: 2),
  ],
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: blackContainerGradient,
  ),
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(75),
      topRight: Radius.circular(75),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4)
  ),
);

BoxDecoration innerContainerStyle = const BoxDecoration(
  color: Colors.white54,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(70),
      topRight: Radius.circular(70),
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4)
  ),
);

final settingsMenuButtonDecoration = BoxDecoration(
  color: Colors.grey.withOpacity(0.08),
  border: Border.all(
    color: Colors.grey.shade500,
    width: 0,
  ),
  borderRadius: BorderRadius.circular(10),
);