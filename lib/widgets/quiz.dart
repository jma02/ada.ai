import 'package:ada_ai/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
    required this.exp,
    required this.incrementExp,
    required this.question,
    required this.onSelectQ,
  });
  final int exp;
  final void Function(int x) incrementExp;
  final void Function(int) onSelectQ;
  final int question;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber[50],
            ),
            child: const Center(child: Text('What is a program?')),
          ),
          const SizedBox(height: 30),
          CustomRadioButton(
              text:
                  'A series of concrete instructions to be carried out by a computer',
              index: 1,
              onSelectQ: onSelectQ,
              question: question),
          const SizedBox(height: 10),
          CustomRadioButton(
              text: 'A turing machine',
              index: 2,
              onSelectQ: onSelectQ,
              question: question),
          const SizedBox(height: 10),
          CustomRadioButton(
              text: 'cream cheese',
              index: 3,
              onSelectQ: onSelectQ,
              question: question),
          const SizedBox(height: 10),
          CustomRadioButton(
              text: 'mannin up',
              index: 4,
              onSelectQ: onSelectQ,
              question: question),
        ]);
  }
}
