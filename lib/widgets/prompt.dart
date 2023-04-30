import 'package:flutter/material.dart';

class PromptWidget extends StatefulWidget {
  const PromptWidget({super.key});

  @override
  State<PromptWidget> createState() => _PromptWidgetState();
}

class _PromptWidgetState extends State<PromptWidget> {
  final TextEditingController _controller = TextEditingController();
  String _prompt = "";

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // Dialog Box Props
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
          'You are now speaking with Ada.ai!',
          textScaleFactor: .80,
        ),
      ),
      // Information Blurb
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Ada.ai is powered by OpenAI\'s ChatGPT.',
            textScaleFactor: .75,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 103, 105, 153),
                  width: 1,
                ),
                color: const Color.fromARGB(255, 110, 157, 227),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[Text("hello")],
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 103, 105, 153),
                  width: 1,
                ),
                color: Color.fromARGB(255, 142, 171, 207),
              ),
              child: TextField(
                controller: _controller,
                onChanged: (text) {
                  setState(() {
                    _prompt = text;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'What would you like to ask Ada.ai?',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
