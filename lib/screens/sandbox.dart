import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: 10),
          RaisedButton(
              child: Text('animated margin'), onPressed: () => setState(() => _margin = (_margin == 0) ? 70 : 0)),
          RaisedButton(
              child: Text('animated color'),
              onPressed: () => setState(() => _color = (_color == Colors.blue) ? Colors.red : Colors.blue)),
          RaisedButton(
              child: Text('animated width'), onPressed: () => setState(() => _width = (_width == 200) ? 250 : 200)),
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _opacity,
            child: Text(
              "hide me",
              style: TextStyle(color: Colors.white),
            ),
          ),
          RaisedButton(
              child: Text('animated opacity'), onPressed: () => setState(() => _opacity = (_opacity == 1) ? 0 : 1)),
        ]),
      ),
    );
  }
}
