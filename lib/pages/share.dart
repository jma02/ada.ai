import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  final int exp;
  final Function() incrementExp;

  const SharePage({
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
          'Test page 2:',
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
