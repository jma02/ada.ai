import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {super.key,
      required this.text,
      required this.index,
      required this.onSelectQ,
      required this.question});
  final String text;
  final int index;
  final int question;
  final void Function(int) onSelectQ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 350,
        child: OutlinedButton(
          onPressed: () {
            onSelectQ(index);
          },
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(18.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              side: BorderSide(
                  color: (question == index)
                      ? Colors.blue
                      : Color.fromRGBO(255, 248, 225, 1)),
              backgroundColor: ((question == index)
                  ? Colors.blue[50]
                  : Color.fromRGBO(255, 248, 225, 1))),
          child: Text(
            text,
            style: TextStyle(
              color: (question == index) ? Colors.blue : Colors.black,
            ),
          ),
        ));
  }
}
