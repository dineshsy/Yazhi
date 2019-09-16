import 'package:flutter/material.dart';
import 'package:yazhi/utils/bulb.dart';


class BedRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2.0,
        backgroundColor: Colors.black12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text(
          "YAZHI",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
              letterSpacing: 5.0,
              color: Colors.white),
        ),
      ),
      body: Bulb(),
      backgroundColor: Colors.grey,
    );
  }
}


