import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose conversion type"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Container(
                    child: Text(
                        "Length Conversions",
                    style: TextStyle(fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/LengthConversions');
                  },
                  color: Colors.red[200],
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Container(
                    child: Text(
                        "Power Conversions",
                    style: TextStyle(fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/PowerConversions');
                  },
                  color: Colors.orange[200],
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Container(
                    child: Text(
                        "Temperature Conversions",
                    style: TextStyle(fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/TemperatureConversions');
                  },
                  color: Colors.yellow[200],
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}