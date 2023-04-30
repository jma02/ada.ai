import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {super.key,
      required this.text,
      required this.selectedOption,
      required this.onSelectOption,
      required this.option});
  final String text;
  final int selectedOption;
  final int option;
  final void Function(int) onSelectOption;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 350,
        child: OutlinedButton(
          onPressed: () {
            onSelectOption(option);
          },
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(18.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              side: BorderSide(
                  color: (option == selectedOption)
                      ? Colors.blue
                      : Color.fromRGBO(255, 248, 225, 1)),
              backgroundColor: ((option == selectedOption)
                  ? Colors.blue[50]
                  : Color.fromRGBO(255, 248, 225, 1))),
          child: Text(
            text,
            style: TextStyle(
              color: (option == selectedOption) ? Colors.blue : Colors.black,
            ),
          ),
        ));
  }
}
