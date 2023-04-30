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
    required this.setCorrectA,
  });
  final int answer;
  final int exp;
  final void Function(int x) setCorrectA;
  final void Function(int x) incrementExp;
  final void Function(int) onSelectOption;
  final int selectedOption;

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late List<int> indices;

  @override
  void initState() {
    super.initState();
    indices = List.generate(problems108.length, (i) => i)..shuffle();
  }

  int index = 0;

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
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(problems108[indices[index]].problem),
          ),
        ),
        const SizedBox(height: 30),
        ...problems108[indices[index]].options.asMap().entries.map(
              (x) => Column(children: [
                CustomRadioButton(
                    text: x.value,
                    selectedOption: widget.selectedOption,
                    onSelectOption: widget.onSelectOption,
                    option: x.key),
                const SizedBox(height: 10)
              ]),
            ),
      ],
    );
  }
}
