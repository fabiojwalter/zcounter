import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeCounter(),
    );
  }
}

class HomeCounter extends StatefulWidget {
  const HomeCounter({super.key});

  @override
  State<HomeCounter> createState() => _HomeCounterState();
}

enum CounterType { men, women, children, staff }

class _HomeCounterState extends State<HomeCounter> {
  Map<CounterType, int> counters = {
    CounterType.men: 0,
    CounterType.women: 0,
    CounterType.children: 0,
    CounterType.staff: 0,
  };

  void decrement(CounterType key) {
    setState(() {
      counters[key] = (counters[key]! - 1);
    });
  }

  void increment(CounterType key) {
    setState(() {
      counters[key] = (counters[key]! + 1);
    });
  }

  void resetCounter(CounterType key) {
    setState(() {
      counters[key] = 0;
    });
  }

  bool isEmpty(CounterType key) {
    return counters[key] == 0;
  }

  final ButtonStyle addButtonStyle = TextButton.styleFrom(
      elevation: 20,
      fixedSize: const Size(100, 60),
      backgroundColor: const Color(0xff4aad52),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ));

  final ButtonStyle minusButtonStyle = TextButton.styleFrom(
      elevation: 20,
      fixedSize: const Size(100, 60),
      backgroundColor: const Color(0xffFF715B),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ));

  final TextStyle counterStyle = const TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  final TextStyle counterNameStyle = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  final TextStyle buttonTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            // color: Color(0xFF006D6D),
            image: DecorationImage(
                image: AssetImage("assets/images/background1.png"),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Homens",
                  style: counterNameStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        isEmpty(CounterType.men)
                            ? ()
                            : decrement(CounterType.men);
                      },
                      style: minusButtonStyle,
                      child: Text(
                        "-1",
                        style: buttonTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Text(
                        '${counters[CounterType.men]}',
                        style: counterStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        increment(CounterType.men);
                      },
                      style: addButtonStyle,
                      child: const Text(
                        "+1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Mulheres",
                  style: counterNameStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        isEmpty(CounterType.women)
                            ? ()
                            : decrement(CounterType.women);
                      },
                      style: minusButtonStyle,
                      child: Text(
                        "-1",
                        style: buttonTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Text(
                        '${counters[CounterType.women]}',
                        style: counterStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        increment(CounterType.women);
                      },
                      style: addButtonStyle,
                      child: const Text(
                        "+1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Equipe",
                  style: counterNameStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        isEmpty(CounterType.staff)
                            ? ()
                            : decrement(CounterType.staff);
                      },
                      style: minusButtonStyle,
                      child: Text(
                        "-1",
                        style: buttonTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Text(
                        '${counters[CounterType.staff]}',
                        style: counterStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        increment(CounterType.staff);
                      },
                      style: addButtonStyle,
                      child: const Text(
                        "+1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Crianças",
                  style: counterNameStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        isEmpty(CounterType.children)
                            ? ()
                            : decrement(CounterType.children);
                      },
                      style: minusButtonStyle,
                      child: Text(
                        "-1",
                        style: buttonTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Text(
                        '${counters[CounterType.children]}',
                        style: counterStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        increment(CounterType.children);
                      },
                      style: addButtonStyle,
                      child: const Text(
                        "+1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: clearAll,
                  style: TextButton.styleFrom(
                    elevation: 20,
                    fixedSize: const Size(200, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Reset all",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void clearAll() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Cuidado'),
              content: const Text('Voce quer zerar todos os contadores?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    resetCounter(CounterType.men);
                    resetCounter(CounterType.women);
                    resetCounter(CounterType.staff);
                    resetCounter(CounterType.children);
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                  child: const Text('Zerar contadores'),
                )
              ],
            ));
  }
}
