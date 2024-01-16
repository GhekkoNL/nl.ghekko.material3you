// Author: Danny van Dijk | Ghekko App & Web Dev
// Copyright Ghekko (https://ghekko.nl/)
// Created: Jan 20224

import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'MORE',
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
    );
  }
}