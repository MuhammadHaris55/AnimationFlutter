import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {

  double _margin = 0;
  double _width = 100;
  double _opacity = 1;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      color: _color,
      width: _width,
      margin: EdgeInsets.all(_margin),
      child: Column(
        children: [
          RaisedButton(
            onPressed: (){
              _width = 200;
            },
            child: Text('Animate width'),
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                _margin = 20;
              });
            },
            child: Text('Animate margin'),
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                _color = Colors.purple;
              });
            },
            child: Text('Animate color'),
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                _opacity = 0;
              });
            },
            child: Text('Animate opacity'),
          ),
          AnimatedOpacity(
            opacity: _opacity,
            duration: Duration(seconds: 1),
            child: Text('HIDE ME',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

