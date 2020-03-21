import 'package:flutter/material.dart';
import 'package:measurementconvertor/Loading.dart';
import 'package:measurementconvertor/LengthConversions.dart';
import 'package:measurementconvertor/Home.dart';
import 'package:measurementconvertor/PowerConversions.dart';
import 'package:measurementconvertor/TemperatureConversions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/Home': (context) => Home(),
        '/LengthConversions': (context) => LengthConversions(),
        '/PowerConversions': (context) => PowerConversions(),
        '/TemperatureConversions': (context) => TemperatureConversions(),
      },
    );
  }
}
