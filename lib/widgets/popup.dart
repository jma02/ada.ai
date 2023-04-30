import 'package:flutter/material.dart';

class PopUpAnimation extends StatelessWidget {
  const PopUpAnimation({super.key, required this.isVisible});
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? const AlertDialog(
            title: Text("Success"),
            titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
            backgroundColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            content: Text("Save successfully"),
          )
        : const SizedBox(height: 0, width: 0);
  }
}
