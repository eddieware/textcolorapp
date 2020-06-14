import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  var _textStyle = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  //final _textStyleCounter = new TextStyle(fontSize: 35, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Color App',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Simple Text Color App'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              
              
           
            Container( padding:EdgeInsets.symmetric(horizontal: 0,vertical: 270),
              child: Text('Cambia el color del Texto!!',style: _textStyle)),
            
            _createButtons()
              
            ],
          ),
        ),
      ),
    );
  }

  Widget _createButtons(){

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      //CupertinoButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      CupertinoButton(child: Text('Azul'), onPressed: _azul,padding: EdgeInsets.symmetric(horizontal: 20),color: CupertinoColors.systemOrange),
      SizedBox(width: 60.0),
      CupertinoButton(child: Text('Verde'), onPressed: _verde,padding: EdgeInsets.symmetric(horizontal: 20),color: CupertinoColors.systemOrange),
      SizedBox(width: 60.0),
      CupertinoButton(child: Text('Rojo'), onPressed:_rojo,padding: EdgeInsets.symmetric(horizontal: 20),color: CupertinoColors.systemOrange),
     
      
      //CupertinoButton.filled(child: Icon(Icons.remove), onPressed: _restar,disabledColor: CupertinoColors.activeBlue,padding: EdgeInsets.symmetric(horizontal: 30)),
      
      ],
  );
}

void _azul(){
  setState(()=> _textStyle = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.activeBlue));
}

void _verde(){
  setState(()=> _textStyle = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.activeGreen));
}

void _rojo(){
  setState(()=> _textStyle = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.destructiveRed));
}




}