import'package:flutter/material.dart';

class Bulb extends StatefulWidget {
  @override
  _BulbState createState() => _BulbState();
}

class _BulbState extends State<Bulb> {
  bool f = false;
  String image = "images/home/bulboff.png";
  double _value = 0.0;

  void _setvalue(double value) {
    setState(() {
      _value=value;
      if(0.0==_value){
        image = "images/home/bulboff.png";
        f = !f;
      }
      else{
        image = "images/home/bulbon.png";
        f = !f;
      }
    });
  }

  void updateImage() {
    setState(() {
      if (f) {
        image = "images/home/bulboff.png";
        _value=0.0;
      } else {
        image = "images/home/bulbon.png";
        _value=0.1;
      }
      f = !f;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5.0),
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(5.0),

                child: Text("HIT THE LIGHT",style: TextStyle(fontSize: 20.0,letterSpacing: 7.0),)),
            Center(
              child: Container(
                height: 300,
                child: FlatButton(
                  child: Container(
                      height: 250, width: 250, child: Image.asset("$image")),
                  onPressed: () {
                    updateImage();
                  },
                ),
              ),
            ),
            Slider(value: _value, onChanged: _setvalue)
          ],
        ),
      ],
    );
  }
}
