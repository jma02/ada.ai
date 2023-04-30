import 'package:flutter/material.dart';
import 'package:envied/envied.dart';

class PromptWidget extends StatefulWidget {
  const PromptWidget({super.key});

  @override
  State<PromptWidget> createState() => _PromptWidgetState();
}

class _PromptWidgetState extends State<PromptWidget> {
  final TextEditingController _controller = TextEditingController();
  String _prompt = "";
  List<String> _dialog = [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // Dialog Box Props
      backgroundColor: Color.fromARGB(208, 255, 255, 255),
      title: Container(
        padding: const EdgeInsets.all(14.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 103, 105, 153),
              width: 1,
            ),
            color: Color.fromARGB(255, 255, 255, 255)),
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
                color: Color.fromARGB(255, 255, 255, 255),
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
                color: Color.fromARGB(255, 255, 255, 255),
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
