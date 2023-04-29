import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  final int exp;
  final Function() incrementExp;

  const LearnPage({
    super.key,
    required this.exp,
    required this.incrementExp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$exp',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        FloatingActionButton(
          onPressed: incrementExp,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ],
    );
  }
}
