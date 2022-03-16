import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/moin.jpg'),
                  radius: 75.0,
                ),
              ),
              Text(
                'Name: ',
                style: GoogleFonts.josefinSans(textStyle: TextStyle(color: Colors.white),fontSize: 22,fontWeight: FontWeight.bold , letterSpacing: 2,
                ),
              ),
              Text(
                'Mohammed Moinuddin',
                style: GoogleFonts.exo2(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 22 ,fontWeight: FontWeight.bold , letterSpacing: 2,),
              ),
              SizedBox(height: 15),
              Text(
                'Looking for:',
                style: GoogleFonts.josefinSans(textStyle: TextStyle(color: Colors.white),fontSize: 22,fontWeight: FontWeight.bold , letterSpacing: 2,
                ),
              ),
              Text(
                'A fresher role across growing IT companies to give my career a kickstart',
                style: GoogleFonts.exo2(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 20 ,fontStyle: FontStyle.italic, letterSpacing: 1,),
              ),
              SizedBox(height: 15),
            ]
        ),
      ),
    );
  }
}
