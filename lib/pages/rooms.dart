import 'package:flutter/material.dart';
import 'package:yazhi/pages/control.dart';
import 'package:yazhi/pages/security.dart';

class Rooms extends StatefulWidget {
  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
       Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Center(
                  child: Text("CONTROL HOME"),
                ),
              ),

            FlatButton(
              child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, //                   <--- border color
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Container(
                  child: Image.asset("images/home/home.jpg"),
                ),
              ),
              onPressed:()=> Navigator.of(context).push(_createRoute()),
            ),
            Container(
              padding:EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
              child: Center(
                child: Text("SECURE HOME"),
              ),
            ),
            FlatButton(
              child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                decoration: BoxDecoration(

                    border: Border.all(
                      color: Colors.black, //                   <--- border color
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Image.asset("images/security/security.jpg"),
              ),
              onPressed: ()=> Navigator.of(context).push(_createRoute1()),
            )
          ],
        ),
      ),
      ],
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Control(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
Route _createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Security(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInCubic;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
