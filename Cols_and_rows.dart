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
          'The  Moin App ',
          style: GoogleFonts.abrilFatface(textStyle: TextStyle(color: Colors.white)
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RaisedButton(onPressed: (){},
                color: Colors.amberAccent,
                child: Text('Button 1'),
              ),
              RaisedButton(onPressed: (){},
                color: Colors.blue,
                child: Text('Button 2'),
              ),
              RaisedButton(onPressed: (){},
                color: Colors.teal,
                child: Text('Button 3'),

              ),
            ], // Row's Children
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RaisedButton(onPressed: (){},
                color: Colors.deepOrangeAccent,
                child: Text('Button 1'),
              ),
              RaisedButton(onPressed: (){},
                color: Colors.pinkAccent,
                child: Text('Button 2'),
              ),
              RaisedButton(onPressed: (){},
              color: Colors.redAccent,
              child: Text('Button 3'),

              ),
            ], // Row's Children
          ),
        ], // column's children
      ),
      );
  }
}
