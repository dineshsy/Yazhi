import 'package:flutter/material.dart';
import 'package:yazhi/pages/bedroom.dart';
import 'package:yazhi/pages/kitchen.dart';
import 'package:yazhi/pages/living_room.dart';

class Control extends StatelessWidget {
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
      body: Rooms(),
      backgroundColor: Colors.grey,
    );
  }
}

class Rooms extends StatelessWidget {

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Center(
                      child: Text("KITCHEN"),
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
                        child: Image.asset("images/home/kitchen.jpg"),
                      ),
                    ),
                    onPressed:()=>
                            Navigator.of(context).push(_createRoute()),
                  ),
                  Container(
                    padding:EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: Center(
                      child: Text("LIVING ROOM"),
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
                      child: Image.asset("images/home/living_room.jpg"),
                    ),
                        onPressed: ()=>
                        Navigator.of(context).push(_createRoute1()),
                  ),
                  Container(
                    padding:EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: Center(
                      child: Text("BEDROOM"),
                    ),
                  ),
                  FlatButton(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 5.0),
                        decoration: BoxDecoration(

                            border: Border.all(
                              color: Colors.black, //                   <--- border color
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        child: Image.asset("images/home/bedroom.jpg"),
                      ),
                      onPressed: ()=>
                        Navigator.of(context).push(_createRoute2()),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}



Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Kitchen(),
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
    pageBuilder: (context, animation, secondaryAnimation) => LivingRoom(),
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

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => BedRoom(),
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
