// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:material3you/app/widgets/custom_drawer.dart';
import 'app/dash.dart';
import 'app/home.dart';
import 'app/more.dart';
import 'app/widgets/custom_app_bar.dart';

class Material3YouApp extends StatefulWidget {
  const Material3YouApp({super.key});

  @override
  State createState() => Material3YouAppState();
}

class Material3YouAppState extends State<Material3YouApp> {

  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize( preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar()),
      drawer: const CustomDrawer(),
      body: const [
        Home(),
        Dash(),
        More(),
      ][selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        height: 75,
        selectedIndex: selectedPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          NavigationDestination(
              selectedIcon: Icon(Icons.dashboard_sharp),
              icon: Icon(Icons.dashboard_outlined),
              label: 'Dashboard'),
          NavigationDestination(
              selectedIcon: Icon(Icons.more_horiz),
              icon: Icon(Icons.more_horiz_outlined),
              label: 'More'),
        ],
      ),
    );
  }
}
