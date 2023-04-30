import 'package:ada_ai/problems/problems108.dart';
import 'package:ada_ai/widgets/popup.dart';
import 'package:ada_ai/widgets/prompt.dart';
import 'package:flutter/material.dart';
import 'pages/learn.dart';
import 'pages/share.dart';
import 'widgets/quiz.dart';
import 'widgets/xpbar.dart';
import 'package:animated_background/animated_background.dart';
import 'package:ada_ai/env/env.dart';

void main() async {
  runApp(const AdaApp());
}

class AdaApp extends StatelessWidget {
  const AdaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ada.ai',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ada.ai'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _exp = 0;
  int _selectedIndex = 0;
  int _selectedOption = -1;
  int _corgisPetted = 0;
  int _answeredInCor = 0;

  bool _isVisible = false;
  int _qNumber = 0;

  late List<int> _indices;
  late int _answer;
  @override
  void initState() {
    super.initState();
    _indices = List.generate(problems108.length, (i) => i)..shuffle();
    _answer = problems108[_indices[0]].correctIndex;
  }

  void _incrementCorgisPetted() {
    setState(() {
      _corgisPetted++;
    });
  }

  void _setQNumber() {
    setState(() {
      _qNumber += 1;
      _qNumber %= problems108.length;
      _setAnswer();
    });
  }

  void _incrementExp(int x) {
    if (x < 0 && _exp == 0) {
      return;
    }
    setState(() {
      _exp += x;
    });
  }

  void _setAnswer() {
    _answer = problems108[_indices[_qNumber]].correctIndex;
  }

  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onSelectOption(int option) async {
    setState(() {
      _selectedOption = option;
    });
  }

  void _setIsVisible() async {
    if (_selectedOption == _answer) {
      _incrementExp(1);
    } else {
      _answeredInCor += 1;
    }
    setState(() {
      _isVisible = true;
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isVisible = false;
      });
      _selectedOption = -1;
      _setQNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    ParticleOptions particleOptions = ParticleOptions(
      image: Image.asset('images/corgi.png'),
      spawnOpacity: 0.0,
      opacityChangeRate: 0.25,
      minOpacity: 0.1,
      maxOpacity: 0.4,
      spawnMinSpeed: 20.0,
      spawnMaxSpeed: 50.0,
      spawnMinRadius: 10.0,
      spawnMaxRadius: 20.0,
      particleCount: 20,
    );

    var particlePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    // This method is rerun every time setState is called
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 117, 166, 216),
      /*
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(236, 255, 255, 255),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ),*/
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: particleOptions,
          paint: particlePaint,
        ),
        vsync: this,
        child: Center(
            child: _selectedIndex == 0
                ? Column(children: <Widget>[
                    const SizedBox(height: 50),
                    LearnPage(
                        exp: _exp,
                        incrementCorgisPetted: _incrementCorgisPetted),
                    Quiz(
                      exp: _exp,
                      incrementExp: (int x) => _incrementExp(x),
                      selectedOption: _selectedOption,
                      onSelectOption: (int option) => _onSelectOption(option),
                      answer: _answer,
                      isVisible: _isVisible,
                      qNumber: _qNumber,
                      indices: _indices,
                    ),
                    const SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
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
                                  builder: (BuildContext context) =>
                                      const PromptWidget()),
                              child: const Text("Ask Ada.ai!")),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.5);
                                    }
                                    return null; // Use the component's default.
                                  },
                                ),
                              ),
                              onPressed: (_selectedOption == -1 || _isVisible)
                                  ? null
                                  : () => _setIsVisible(),
                              child: const Text("Submit")),
                        ]),
                    Expanded(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: XpBar(exp: _exp),
                    ))
                  ])
                : Column(children: <Widget>[
                    SharePage(
                      exp: _exp,
                      corgisPetted: _corgisPetted,
                      answeredInCor: _answeredInCor,
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: XpBar(exp: _exp),
                    ))
                  ])),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'Share Stats',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _setSelectedIndex,
      ),
    );
  }
}
