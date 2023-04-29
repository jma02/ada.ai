import 'package:flutter/material.dart';

class PromptWidget extends StatefulWidget {
  const PromptWidget({super.key});

  @override
  State<PromptWidget> createState() => _PromptWidgetState();
}

class _PromptWidgetState extends State<PromptWidget> {
  late TextEditingController _controller;
  String _prompt = "";

  void setPrompt(String prompt) {
    setState(() {
      _prompt = prompt;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void validateToken() {}
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(173, 116, 177, 217),
      title: const Text(
        'You\'re now speaking with Ada.ai!',
        textScaleFactor: .85,
      ),
      content: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Text(
              'ada.ai is powered by OpenAI\'s ChatGPT.',
              textScaleFactor: .75,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Did not use API Token'),
          child: const Text('I do not want to use gpt-3.5'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'Did not use API Token'),
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
