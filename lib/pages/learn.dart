import 'package:ada_ai/widgets/prompt.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  final int exp;

  const LearnPage({
    super.key,
    required this.exp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          'images/corgi.png',
          scale: 5,
        ),
      ],
    );
  }
}
