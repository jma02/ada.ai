import 'package:ada_ai/widgets/prompt.dart';
import 'package:flutter/material.dart';

import '../widgets/xpbar.dart';

import 'package:flutter_svg/svg.dart';

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
        TextButton(
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => const PromptWidget()),
            child: const Text("Test")),
        Image.asset(
          'images/corgi.png',
          scale: 5,
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
