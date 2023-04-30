import 'dart:math';

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class XpBar extends StatelessWidget {
  final int exp;

  const XpBar({
    super.key,
    required this.exp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          '$exp',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        StepProgressIndicator(
          totalSteps: 10,
          currentStep: exp,
          selectedColor: Color.fromARGB(255, 37, 237, 121),
          unselectedColor: Color.fromARGB(255, 130, 221, 239),
          size: 20,
        ),
      ],
    );
  }
}
