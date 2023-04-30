import 'package:ada_ai/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:ada_ai/problems/problems108.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
    required this.exp,
    required this.incrementExp,
    required this.selectedOption,
    required this.onSelectOption,
    required this.answer,
    required this.isVisible,
    required this.qNumber,
    required this.indices,
  });
  final int answer;
  final int exp;
  final void Function(int x) incrementExp;
  final void Function(int) onSelectOption;
  final int selectedOption;
  final bool isVisible;
  final int qNumber;
  final List<int> indices;

  @override
  // ignore: library_private_types_in_public_api
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 350,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber[50],
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                problems108[widget.indices[widget.qNumber]].problem,
                textAlign: TextAlign.center,
                maxLines: null,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        ...problems108[widget.indices[widget.qNumber]]
            .options
            .asMap()
            .entries
            .map(
              (x) => Column(children: [
                CustomRadioButton(
                  text: x.value,
                  selectedOption: widget.selectedOption,
                  onSelectOption: widget.onSelectOption,
                  option: x.key,
                  isVisible: widget.isVisible,
                  answer: widget.answer,
                ),
                const SizedBox(height: 10)
              ]),
            ),
      ],
    );
  }
}
