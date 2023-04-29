import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  final String apiKey;
  final Function(String) setApiKey;

  const LoginWidget({super.key, required this.apiKey, required this.setApiKey});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('AlertDialog Title'),
      content: const Text('AlertDialog description'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
