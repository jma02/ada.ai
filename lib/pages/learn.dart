import 'package:flutter/material.dart';

import '../widgets/xpbar.dart';

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
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        XpBar(exp: exp),
        FloatingActionButton(
          onPressed: incrementExp,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ],
    );
  }
}
