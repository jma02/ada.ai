import 'package:flutter/material.dart';
import 'package:envied/envied.dart';
import 'package:ada_ai/api/gpt_api.dart';
import 'package:ada_ai/classes/chat_message.dart';
import 'package:ada_ai/widgets/message_bubble.dart';
import 'package:ada_ai/widgets/message_composer.dart';

class PromptWidget extends StatefulWidget {
  const PromptWidget({super.key});

  @override
  State<PromptWidget> createState() => _PromptWidgetState();
}

class _PromptWidgetState extends State<PromptWidget> {
  final TextEditingController _controller = TextEditingController();
  GPTApi gptApi = GPTApi();
  final _messages = <ChatMessage>[
    ChatMessage(
        'Bark! I am Ada.ai, an intelligent Corgi who wants to tutor you in computer science!',
        false),
  ];
  var _awaitingResponse = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _onSubmitted(String message) async {
    setState(() {
      _messages.add(ChatMessage(message, true));
      _awaitingResponse = true;
    });
    final response = await gptApi.completeChat(_messages);
    setState(() {
      _messages.add(ChatMessage(response, false));
      _awaitingResponse = false;
    });
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
              width: 2,
            ),
            color: Color.fromARGB(255, 255, 255, 255)),
        child: const Text(
          'You are now chatting with Ada.ai!',
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
          Flexible(
            child: Container(
              height: 900,
              padding: const EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 103, 105, 153),
                  width: 1,
                ),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Scrollbar(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ..._messages.map(
                        (msg) => MessageBubble(
                          content: msg.content,
                          isUserMessage: msg.isUserMessage,
                        ),
                      ),
                    ],
                  ),
                ),
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
              child: MessageComposer(
                onSubmitted: _onSubmitted,
                awaitingResponse: _awaitingResponse,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
