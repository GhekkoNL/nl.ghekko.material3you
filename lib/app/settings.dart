// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import '../../../theme/layout_prefs.dart';
import '../theme/container_styles.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(title: const Text('Settings')),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAppSettings(context),
                    const Height10(),
                    ResponsiveGridRow(children: [
                      ResponsiveGridCol(
                        xs: 12,
                        sm: 6,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          alignment: const Alignment(0, 0),
                          child: Column(children: [
                            _buildMenu(context),
                            const Height15(),
                          ]),
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        sm: 6,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          alignment: const Alignment(0, 0),
                          child: Column(children: [
                            _buildOther(context),
                            //15.height,
                            //_buildHealth(context),
                          ]),
                        ),
                      ),
                    ]),
                    const Height10(),
                  ],
                ))));
  }

  Widget _buildAppSettings(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: Text('App Settings',
                  style: Theme.of(context).textTheme.bodyLarge)),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xs: 12,
                sm: 6,
                child: Container(
                    width: 220,
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 6, bottom: 6),
                    decoration: settingsMenuButtonDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('DarkMode',
                            style: Theme.of(context).textTheme.bodyMedium),
                        const Width10(),
                        Switch(
                          // This bool value toggles the switch.
                          value: value,
                          activeColor: Colors.blueGrey,
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              value;
                            });
                          },
                        ),
                      ],
                    )),
              ),
              ResponsiveGridCol(
                xs: 12,
                sm: 6,
                child: Container(
                    width: 220,
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 6, bottom: 6),
                    decoration: settingsMenuButtonDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Language',
                            style: Theme.of(context).textTheme.bodyMedium),
                        const Width10(),

                        PopupMenuButton<int>(
                          surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
                          icon: const Icon(Icons.g_translate),
                          offset: const Offset(50, 50),
                          elevation: 2.0,
                          itemBuilder: (context) => [
                            PopupMenuItem<int>(
                              value: 0,
                              child: ListTile(
                                  onTap: () { },
                                  title: const Text('English')),
                            ),
                            PopupMenuItem<int>(
                                value: 1,
                                child: ListTile(
                                    onTap: () { },
                                    title: const Text('Spanish'))),
                            PopupMenuItem<int>(
                                value: 2,
                                child: ListTile(
                                    onTap: () { },
                                    title: const Text('Hebrew'))),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ]);
  }

  Widget _buildMenu(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Menu', style: Theme.of(context).textTheme.bodyLarge),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.person),
                      const Width10(),
                      Text('Account',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.money),
                      const Width10(),
                      Text('Orders',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.credit_card),
                      const Width10(),
                      Text('Payments',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.access_time_rounded),
                      const Width10(),
                      Text('Opening Hours',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.list),
                      const Width10(),
                      Text('FAQ',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
        ]);
  }

  Widget _buildOther(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Other', style: Theme.of(context).textTheme.bodyLarge),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.web_outlined),
                      const Width10(),
                      Text('Website',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.newspaper),
                      const Width10(),
                      Text('Newsletter',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.edit),
                      const Width10(),
                      Text('Subscribe',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.assignment_outlined),
                      const Width10(),
                      Text('Terms of Service',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
          const Height10(),
          InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
                  decoration: settingsMenuButtonDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.settings_outlined),
                      const Width10(),
                      Text('About This App',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ))),
        ]);
  }
}
