import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  final int exp;

  const SharePage({
    super.key,
    required this.exp,
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
      ],
    );
  }
}
