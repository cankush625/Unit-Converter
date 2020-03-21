import 'package:flutter/material.dart';

class PowerConversions extends StatefulWidget {
  @override
  _PowerConversionsState createState() => _PowerConversionsState();
}

class _PowerConversionsState extends State<PowerConversions> {
  TextEditingController controller = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Power Conversions"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0.0),
          child: Column(
            children: <Widget>[
              Text(
                "Enter the value to convert:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the measure'
                ),
                keyboardType: TextInputType.number,
                controller: controller,
                autofocus: true,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20.0,
              ),
              Text(
                "Converted value is:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20.0,
              ),
              Text(
                '$result',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Container(
                        child: Center(
                          child: Text(
                            " kW-hp ",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.redAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a / 0.746;
                        setState(() {
                          result = result;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Container(
                        child: Center(
                          child: Text(
                            " kW-W  ",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                          ),
                        ),
                        color: Colors.orangeAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a * 1000;
                        setState(() {
                          result = result;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Container(
                        child: Center(
                          child: Text(
                            " W-hp  ",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.yellowAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a / 746;
                        setState(() {
                          result = result;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Divider(
                height: 60.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Container(
                        child: Center(
                          child: Text(
                            " hp-kW ",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.greenAccent[700],
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a * 0.746;
                        setState(() {
                          result = result;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Container(
                        child: Center(
                          child: Text(
                            " W-kW  ",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                          ),
                        ),
                        color: Colors.blueAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a / 1000;
                        setState(() {
                          result = result;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Container(
                        child: Center(
                          child: Text(
                            " hp-W  ",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.lightBlueAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a * 746;
                        setState(() {
                          result = result;
                        });
                      },
                    ),
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
