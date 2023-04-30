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
      backgroundColor: const Color.fromARGB(223, 88, 141, 222),
      title: Container(
        padding: const EdgeInsets.all(14.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 103, 105, 153),
              width: 1,
            ),
            color: const Color.fromARGB(255, 110, 157, 227)),
        child: const Text(
          'You\'re now speaking with Ada.ai!',
          textScaleFactor: .85,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Text(
            'Ada.ai is powered by OpenAI\'s ChatGPT.',
            textScaleFactor: .75,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'What would you like to ask Ada.ai?',
                ),
              ),
            ),
          ),
        ],
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
