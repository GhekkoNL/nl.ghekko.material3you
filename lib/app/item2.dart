// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  const Item2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Item 2')),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ITEM 2',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text(
              'Ghekko',
              style: TextStyle(
                fontSize: 25,
              ),
            )),
            Center(
                child: Text(
              'Material 3 You',
              style: TextStyle(
                fontSize: 20,
              ),
            )),
          ],
        ));
  }
}
