import 'package:ada_ai/widgets/customradiobutton.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
    required this.exp,
    required this.incrementExp,
  });
  final int exp;
  final Function(int x) incrementExp;
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int value = 0;
  void _onSubmitted(int index) async {
    setState(() {
      value = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Container(
        width: 350,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber[50],
        ),
        child: const Center(child: Text('What is a program?')),
      ),
      CustomRadioButton(
          text:
              'A series of concrete instructions to be carried out by a computer',
          index: 1,
          onSubmitted: _onSubmitted,
          value: value),
      CustomRadioButton(
          text: 'A turing machine',
          index: 2,
          onSubmitted: _onSubmitted,
          value: value),
      CustomRadioButton(
          text: 'cream cheese',
          index: 3,
          onSubmitted: _onSubmitted,
          value: value),
      CustomRadioButton(
          text: 'mannin up', index: 4, onSubmitted: _onSubmitted, value: value),
    ]);
  }
}
