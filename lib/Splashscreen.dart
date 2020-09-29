import 'dart:async';

import 'package:calculator/Calculator.dart';
import 'package:flutter/material.dart';



class Splashscreen extends StatefulWidget {

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mockCheckForSession().then(
            (status){
              if(status){
                _navigatetohome();
              }
            }
    );
  }

  Future<bool> _mockCheckForSession() async{
    await Future.delayed(Duration(milliseconds: 5000),(){});

    return true;
  }

  void _navigatetohome(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) => MyHomePage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit:StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.orangeAccent,),
               ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                      children: <Widget>[
                        Image.asset("assets/icon/icon.png"),
                        SizedBox(height: 20,),
                        Text("Caluclator",style: TextStyle(fontSize: 25,color: Colors.white),)
                      ],
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
}

