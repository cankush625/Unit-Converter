import 'package:flutter/material.dart';

class LengthConversions extends StatefulWidget {
  @override
  _LengthConversionsState createState() => _LengthConversionsState();
}

class _LengthConversionsState extends State<LengthConversions> {
  TextEditingController controller = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Length Conversions"),
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
                            "mts-cms",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.redAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a * 100;
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
                            "kms-mts",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                          ),
                        ),
                        color: Colors.orangeAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a * 1000;
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
                            "miles-kms",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.yellowAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a * 1.609;
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
                            "cms-mts",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.greenAccent[700],
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a / 100;
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
                            "mts-kms",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                          ),
                        ),
                        color: Colors.blueAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a / 1000;
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
                            "kms-miles",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.lightBlueAccent,
                        height: 70,
                      ),
                      onPressed: () {
                        double a = double.parse(controller.text);
                        result = a / 1.609;
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
