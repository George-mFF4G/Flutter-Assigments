import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BasketBall Scoeer Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BasketBall Sccoer Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "TEAM A",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "$_counter1",
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _counter1++;
                      });
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: const Text(
                      "+1 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _counter1 = _counter1 + 2;
                      });
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: const Text(
                      "+2 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _counter1 = _counter1 + 3;
                      });
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: const Text(
                      "+3 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "TEAM B",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "$_counter2",
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _counter2++;
                      });
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: const Text(
                      "+1 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _counter2 += 2;
                      });
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: const Text(
                      "+2 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _counter2 += 3;
                      });
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 20)),
                    child: const Text(
                      "+3 Point",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _counter1 = 0;
                _counter2 = 0;
              });
            },
            style: TextButton.styleFrom(
                fixedSize: const Size(120, 50),
                backgroundColor: Colors.grey,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text(
              "RESET",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )),
    );
  }
}
