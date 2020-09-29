import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  Widget custombutton(String btnval){
    return Expanded(
        child: OutlineButton(onPressed: (){

        },
          padding: EdgeInsets.all(25.0),
        child: Text("$btnval",style: TextStyle(
          fontSize: 25.0
        ),),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end ,
          children: <Widget>[
            Expanded(
             child: Container(
               padding: EdgeInsets.all(8.0),
              alignment: Alignment.bottomRight,
              child: Text("Output",style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold
              ),),
            )),
            Row(
              children: <Widget>[
               custombutton("1"),
               custombutton("2"),
               custombutton("3"),
               custombutton("+"),
              ],
            ),
            Row(
              children: <Widget>[
               custombutton("4"),
               custombutton("5"),
               custombutton("6"),
               custombutton("-"),
              ],
            ),
            Row(
              children: <Widget>[
               custombutton("7"),
               custombutton("8"),
               custombutton("9"),
               custombutton("/"),
              ],
            ),
            Row(
              children: <Widget>[
               custombutton("c"),
               custombutton("0"),
               custombutton("="),
               custombutton("x"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
