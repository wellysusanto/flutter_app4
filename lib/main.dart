import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new AwesomeButton(),
      )
  );
  
}

class AwesomeButton extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {
    int counter = 0;
    List<String> strings = ['Flutter','Is','Awesome'];
    String displayString = "";
    void onPressed() {
      setState((){
        displayString = strings[counter];
        counter = counter < 2 ? counter + 1 :0 ;
      } );
    }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Stateful Widget'),backgroundColor: Colors.white,),
          body: new Container(
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Text(displayString),
                  new Padding(padding: new EdgeInsets.all(10.0)),
                  new RaisedButton(
                    onPressed: onPressed,
                    child: new Text('Press Me',style: new TextStyle(color: Colors.white),),
                    color: Colors.red,
                  )
                ],
              ),
            )
          ),
      );
    }
}