import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatelessWidget {
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
   );
  }
}
