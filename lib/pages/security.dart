import 'package:flutter/material.dart';

class Security extends StatelessWidget {
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
          "YAZHI ",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
              letterSpacing: 5.0,
              color: Colors.white),
        ),
      ),
      body: Secure(),
      backgroundColor: Colors.grey,
    );
  }
}

class Secure extends StatefulWidget {
  @override
  _SecureState createState() => _SecureState();
}

class _SecureState extends State<Secure> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool f=true;

  void forceSecure(){
    setState(() {
      if(f) {
        isSwitched = true;
        isSwitched1 = true;
        isSwitched2 = true;
      }
      else{
        isSwitched = false;
        isSwitched1 = false;
        isSwitched2 = false;
      }
      f=!f;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Container(
              padding: EdgeInsets.all(5.0),

              child: Text("HIT TO FORCE SECURE",style: TextStyle(fontSize: 20.0,letterSpacing: 7.0),)),
        ),
        Center(
          child: Container(
            height: 300,
            child: FlatButton(
              child: Container(
                  height: 250, width: 250, child: Image.asset("images/security/lock.png",color: f?Colors.black:Colors.red,)),
              onPressed: () {
                forceSecure();
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("LOCK MAIN DOOR"),
            ),
            Container(
              child: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeTrackColor: Colors.redAccent,
                activeColor: Colors.red,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("LOCK BEDROOM DOOR"),
            ),
            Container(
              child: Switch(
                value: isSwitched1,
                onChanged: (value) {
                  setState(() {
                    isSwitched1 = value;
                  });
                },
                activeTrackColor: Colors.redAccent,
                activeColor: Colors.red,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("LOCK GARAGE DOOR"),
            ),
            Container(
              child: Switch(
                value: isSwitched2,
                onChanged: (value) {
                  setState(() {
                    isSwitched2 = value;
                  });
                },
                activeTrackColor: Colors.redAccent,
                activeColor: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
