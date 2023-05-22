import 'package:flutter/material.dart';
import 'dart:async';
import 'package:light/light.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // String _luxString = 'Unknown';
  late Light _light;
  late StreamSubscription _subscription;
  Color backgroundColorSensorLevel = Colors.black;
  Color textColorSensorLevel = Colors.white;
  double lightSensorLevel = 0;

  void onData(int luxValue) async {
    setState(() {
      if (luxValue < 30) {
        backgroundColorSensorLevel = Colors.black;
        textColorSensorLevel = Colors.white;
      } else {
        backgroundColorSensorLevel = Colors.white;
        textColorSensorLevel = Colors.black;
      }
      lightSensorLevel = luxValue.toDouble();
    });
  }

  void stopListening() {
    _subscription.cancel();
  }

  void startListening() {
    _light = new Light();
    try {
      _subscription = _light.lightSensorStream.listen(onData);
    } on LightException catch (exception) {
      print(exception);
    }
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    startListening();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'George Ambient Light App Project',
      home: Scaffold(
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          color: backgroundColorSensorLevel
              .withOpacity(lightSensorLevel.clamp(0.0, 1.0).toDouble()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 150.0,
                    backgroundImage: AssetImage('images/upload.jpg'),
                  ),
                  Text(
                    "George Morkos",
                    style: GoogleFonts.pacifico(
                        color: textColorSensorLevel.withOpacity(
                            lightSensorLevel.clamp(0.0, 1.0).toDouble()),
                        fontSize: 44),
                  ),
                  Text(
                    'Light Level: ${lightSensorLevel.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontSize: 20,
                        color: textColorSensorLevel.withOpacity(
                            lightSensorLevel.clamp(0, 1).toDouble())),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
