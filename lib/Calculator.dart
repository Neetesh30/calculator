import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  int num1,num2;
  String texttodispplay = "";
  String res;
  String operatorselected;


  onClickbntval(String btnval){
        if(btnval == "c"){
          texttodispplay = "";
          num1 = 0;
          num2 = 0;
          res = "";
        }
        else if(btnval == "+" || btnval == "-" || btnval == "/" || btnval == "x"  ){
          num1 = int.parse(texttodispplay);
          res = "";
        operatorselected = btnval;
        }
        else if(btnval == "="){
            num2 = int.parse(texttodispplay);

            if(operatorselected == "+"){
              res = (num1+num2).toString();
            }

            if(operatorselected == "-"){
              res = (num1-num2).toString();
            }

            if(operatorselected == "/"){
              res = (num1/num2).toString();
            }

            if(operatorselected == "x"){
              res = (num1*num2).toString();
            }




        }else{
          res = int.parse(texttodispplay + btnval).toString();
        }
        setState(() {
          texttodispplay = res;
        });
  }

  Widget custombutton(String btnval){
    return Expanded(
        child: OutlineButton(onPressed: (){
          onClickbntval(btnval);
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
              child: Text("$texttodispplay",style: TextStyle(
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
