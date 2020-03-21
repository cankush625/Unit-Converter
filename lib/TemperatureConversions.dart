import 'package:flutter/material.dart';

class TemperatureConversions extends StatefulWidget {
  @override
  _TemperatureConversionsState createState() => _TemperatureConversionsState();
}

class _TemperatureConversionsState extends State<TemperatureConversions> {
  TextEditingController controller = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temperature Conversions"),
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
                            "cel-kel",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.redAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a + 273.15;
                        print(result);
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
                            "cel-fer",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                          ),
                        ),
                        color: Colors.orangeAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = (a * 1.8) + 32;
                        print(result);
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
                            "kel-fer",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.yellowAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = (a * 1.8) - 459.67;
                        print(result);
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
                            "kel-cel",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.greenAccent[700],
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a - 273.15;
                        print(result);
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
                            "fer-cel",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                          ),
                        ),
                        color: Colors.blueAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = (a - 32) / 1.8;
                        print(result);
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
                            "fer-kel",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.lightBlueAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = (a + 459.67) * (5/9);
                        print(result);
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
