import 'package:ada_ai/widgets/prompt.dart';
import 'package:flutter/material.dart';

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
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.5);
                  }
                  return null; // Use the component's default.
                },
              ),
            ),
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => const PromptWidget()),
            child: const Text("Ask Ada.ai!")),
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
