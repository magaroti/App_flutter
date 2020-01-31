import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: FlareActor("lib/assets/Loading_flutter.flr", animation: "Girar"),
        ),
      ),

    );
  }
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage())
      );
    });
  }
}

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 500,
        child: FlareActor("lib/assets/SuccessCheck.flr", animation: "Untitled"),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context).pop();
    });
  }

}
