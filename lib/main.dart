import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yazhi/pages/home.dart';

void main() => runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
