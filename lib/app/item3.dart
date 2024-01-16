// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';

class Item3 extends StatelessWidget {
  const Item3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Item 3')),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ITEM 3',
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
