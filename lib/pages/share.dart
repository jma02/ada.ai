import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  final int exp;
  final int corgisPetted;

  const SharePage({
    super.key,
    required this.exp,
    required this.corgisPetted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 75),
        Container(
          width: 325,
          padding: const EdgeInsets.all(14.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 103, 105, 153),
              width: 1,
            ),
            color: Color.fromARGB(109, 8, 52, 228),
          ),
          child: Column(
            children: [
              const Text(
                "Your Ada.ai stats!",
                style: TextStyle(
                  color: Color.fromARGB(228, 255, 255, 255),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                  width: 275,
                  padding: const EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 103, 105, 153),
                      width: 1,
                    ),
                    color: Color.fromRGBO(255, 248, 225, 1),
                  ),
                  child: Column(
                    children: [
                      Container(
                          height: 100,
                          width: 500,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 103, 105, 153),
                              width: 1,
                            ),
                            color: Color.fromRGBO(255, 248, 225, 1),
                          ),
                          child: Column(children: [
                            Text("Total Experience Points:"),
                            SizedBox(height: 10.0),
                            Text(
                              "${exp}",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ])),
                      Container(
                        height: 100,
                        width: 500,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 103, 105, 153),
                            width: 1,
                          ),
                          color: Color.fromRGBO(255, 248, 225, 1),
                        ),
                        child: Column(children: [
                          Text("Current Level:"),
                          SizedBox(height: 10.0),
                          Text(
                            "${exp}",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: 100,
                        width: 500,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 103, 105, 153),
                            width: 1,
                          ),
                          color: Color.fromRGBO(255, 248, 225, 1),
                        ),
                        child: Column(children: [
                          Text("Problems Answered Correctly:"),
                          SizedBox(height: 10.0),
                          Text(
                            "${exp}",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: 100,
                        width: 500,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 103, 105, 153),
                            width: 1,
                          ),
                          color: Color.fromRGBO(255, 248, 225, 1),
                        ),
                        child: Column(children: [
                          Text("Problems Answered Incorrectly:"),
                          SizedBox(height: 10.0),
                          Text(
                            "${exp}",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: 100,
                        width: 500,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 103, 105, 153),
                            width: 1,
                          ),
                          color: Color.fromRGBO(255, 248, 225, 1),
                        ),
                        child: Column(children: [
                          Text("Corgis Petted:"),
                          SizedBox(height: 10.0),
                          Text(
                            "$corgisPetted",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
