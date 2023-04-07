import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/upload.jpg'),
                  ),
                  Text(
                    "George Morkos",
                    style:
                        GoogleFonts.pacifico(color: Colors.white, fontSize: 40),
                  ),
                  const Text("Flutter Developer",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  const SizedBox(
                    width: 100,
                    child: Divider(
                      color: Colors.white,
                      height: 50,
                      thickness: 2.0,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 300,
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.phone,
                            color: Colors.teal,
                          ),
                          Text(
                            "+01000000000",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    color: Colors.white,
                    width: 300,
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.mail,
                            color: Colors.teal,
                          ),
                          Text(
                            "Gm1362@fayoum.edu.eg",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
