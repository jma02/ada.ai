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
        StepProgressIndicator(
          totalSteps: 15,
          currentStep: exp,
          selectedColor: const Color.fromARGB(255, 37, 237, 121),
          unselectedColor: const Color.fromARGB(255, 130, 221, 239),
          size: 20,
        ),
      ],
    );
  }
}
