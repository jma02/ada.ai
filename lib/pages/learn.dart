import 'package:ada_ai/widgets/prompt.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  final int exp;
  final Function() incrementCorgisPetted;

  const LearnPage({
    super.key,
    required this.exp,
    required this.incrementCorgisPetted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: incrementCorgisPetted,
          child: Image.asset(
            'images/corgi.png',
            scale: 5,
          ),
        ),
      ],
    );
  }
}
