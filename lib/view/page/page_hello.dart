import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Page',
        ),
      ),
      body: Center(
        child: FlatButton(
          child: Text(
            'POP',
            style: TextStyle(color: Color(0xffff0000)),
          ),
          color: Color(0xff1996f9),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          },
        ),
      ),
    );
  }
}
