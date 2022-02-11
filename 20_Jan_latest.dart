import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
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
          'The  Random App ',
          style: GoogleFonts.abrilFatface(textStyle: TextStyle(color: Colors.white)
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
              child: Image.asset('assets/moin.jpg'),
            flex: 1,

          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(23),
              color: Colors.tealAccent,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
            padding: EdgeInsets.all(23),
            color: Colors.amberAccent,
            child: Text('2'),
          ),
          ),
          Expanded(
            flex: 3,
            child: Container(
            padding: EdgeInsets.all(23),
            color: Colors.lightBlue,
            child: Text('3'),
          ),
          ),


        ],
      ),
      );
  }
}

