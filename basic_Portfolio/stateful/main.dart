import 'package:community_material_icon/community_material_icon.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynewapp/screens/screen1.dart';
import 'package:mynewapp/screens/screen2.dart';
import 'package:mynewapp/screens/screen3.dart';
import 'package:mynewapp/screens/screen4.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {

  PageController pageController = PageController(initialPage: 0);
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.amberAccent,
        title: Text('My Portfolio ', style: GoogleFonts.alatsi(textStyle: TextStyle(color: Colors.white),fontSize: 23,fontWeight: FontWeight.bold , letterSpacing: 2,),),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        shape: RoundedRectangleBorder(),
      ),


      body: PageView(
        children: [
          ScreenOne(),
          ScreenTwo(),
          ScreenThree(),
          ScreenFour(),
        ],
      ),
    );
  }
}


