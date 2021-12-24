import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Moin App ',
          style: TextStyle(fontSize: 20, fontFamily: 'Cinzel',fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.lightBlueAccent,
        child: Text(
            'Assalamualaikum',
            style: TextStyle(fontSize: 30, fontFamily: 'Josefin'),
      ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, backgroundColor:Colors.deepPurple  ,
          child: Text('CLICK')
      ),
    );
  }
}

