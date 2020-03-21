import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void loadingScreen() async {
    await new Future.delayed(const Duration(seconds : 2));
    Navigator.pushReplacementNamed(context, '/Home');
  }

  @override
  void initState() {
    super.initState();
    loadingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Center(
          child: SpinKitWave(
            color: Colors.white,
            size: 70.0,
          ),
        ),
      ),
    );
  }
}