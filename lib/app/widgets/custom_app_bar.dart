// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      toolbarHeight: 60,
      centerTitle: true,
      elevation: 2,
      title: const Text('Material 3 You'),
      actions: [
        PopupMenuButton<int>(
          surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
          icon: const Icon(Icons.more_vert),
          offset: const Offset(50, 50),
          elevation: 2.0,
          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: ListTile(
                  onTap: () {
                    Get.toNamed('/item1');
                  },
                  leading: const Icon(Icons.add_circle_outline),
                  title: const Text('Item 1')),
            ),
            PopupMenuItem<int>(
                value: 1,
                child: ListTile(
                    onTap: () {
                      Get.toNamed('/item2');
                    },
                    leading: const Icon(Icons.list_rounded),
                    title: const Text('Item 2'))),
            PopupMenuItem<int>(
                value: 2,
                child: ListTile(
                    onTap: () {
                      Get.toNamed('/item3');
                    },
                    leading: const Icon(Icons.email_outlined),
                    title: const Text('Item 3'))),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.add_circle),
          onPressed: () {
            Get.snackbar(
              'Hello',
              'This is a message to you', // message
              icon: const Icon(Icons.alarm),
              shouldIconPulse: false,
              barBlur: 10,
              isDismissible: false,
              backgroundColor: Colors.white.withOpacity(0.3),
              backgroundGradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.5,
                    0.7,
                    0.9
                  ],
                  colors: [
                    Colors.yellow,
                    Colors.amber,
                    Colors.orange,
                    Colors.deepOrange,
                  ]),
              duration: const Duration(seconds: 3),
            );
          },
        ),
      ],
    );
  }
}
