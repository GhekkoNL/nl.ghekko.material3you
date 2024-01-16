// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:material3you/app/dash.dart';
import 'package:material3you/app/home.dart';
import 'package:material3you/app/item1.dart';
import 'package:material3you/app/item2.dart';
import 'package:material3you/app/item3.dart';
import 'package:material3you/app/more.dart';
import 'package:material3you/app/settings.dart';
import 'package:material3you/theme/color_schemes.dart';
import 'app.dart';
import 'app/profile.dart';

void main() {
  runApp(const Material3You());
}

class Material3You extends StatelessWidget {
  const Material3You({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return GetMaterialApp(
      title: 'Ghekko Material 3 You',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 350),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/dash', page: () => const Dash()),
        GetPage(name: '/more', page: () => const More()),
        GetPage(
            name: '/profile',
            page: () => const Profile(),
            transition: Transition.zoom),
        GetPage(
            name: '/settings',
            page: () => const Settings(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: '/item1',
            page: () => const Item1(),
            transition: Transition.topLevel),
        GetPage(
            name: '/item2',
            page: () => const Item2(),
            transition: Transition.downToUp),
        GetPage(
            name: '/item3',
            page: () => const Item3(),
            transition: Transition.rightToLeft),
      ],
      home: const Material3YouApp(),
    );
  }
}
