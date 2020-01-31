import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:faxyma/HomePage.dart';
import 'package:faxyma/login_page.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
  ));


  runApp(MaterialApp(
    home: RunPlay(),
    debugShowCheckedModeBanner: false,
  ));
}

class RunPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loading_Principal(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Loading_Principal extends StatefulWidget {
  @override
  _Loading_PrincipalState createState() => _Loading_PrincipalState();
}

class _Loading_PrincipalState extends State<Loading_Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: FlareActor("lib/assets/Faxyintro.flr", animation: "intro2"),
        ),
      ),

    );
  }
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((_){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage())
      );
    });
  }
}
