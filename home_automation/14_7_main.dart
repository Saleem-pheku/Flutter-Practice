import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


void main() => runApp(MaterialApp(
  home: Group6Widget(),
));

class Group6Widget extends StatefulWidget {
  @override
  _Group6WidgetState createState() => _Group6WidgetState();
}

class _Group6WidgetState extends State<Group6Widget> {
  @override
  bool isLoading = false;
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool isPlaying = false;

  Widget build(BuildContext context) {
    // Figma Flutter Generator Group6Widget - GROUP

    return Scaffold(
      backgroundColor: Color.fromRGBO(223, 223, 223, 1.0),
      bottomNavigationBar: GNav( rippleColor: Colors.black26, // tab button ripple color when pressed
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
          tabShadow: [BoxShadow(color: Colors.deepPurple.withOpacity(0.5), blurRadius: 8)], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.blue[800], // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 24,
          tabs: const[
        GButton(icon: Icons.home, text: 'Home'),
        GButton(icon: Icons.account_circle, text: 'profile'),
        GButton(icon: Icons.insert_chart_rounded, text: 'works'),
        GButton(icon: Icons.info, text: 'info'),
      ]
      ),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.amberAccent,
        title: Text('Home Automation UI ', style: GoogleFonts.ubuntu(textStyle: TextStyle(color: Colors.black),fontSize: 23,fontWeight: FontWeight.bold , letterSpacing: 2,),),
        backgroundColor: Color.fromRGBO(47, 255, 0, 1.0),
        centerTitle: true,
        shape: RoundedRectangleBorder(),
      ),

        body: Stack(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    child: Image.network('https://images.unsplash.com/photo-1580584126903-c17d41830450?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1039&q=80',
                      fit: BoxFit.cover, width: 450,height: 70,),
                  ),
                  Text('Home automation UI using flutter', style: GoogleFonts.graduate(textStyle: TextStyle(color: Colors.deepPurple, fontSize: 25)),),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.location_pin, size: 35, color: Colors.deepPurple,),
                      Text('Hyderabad',  style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.deepPurple, fontSize: 25)),),
                      SizedBox(width: 110),
                      Icon(Icons.thermostat_rounded, size: 30, color: Colors.deepPurple,),
                      Text('28° C', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.deepPurple, fontSize: 25)),)
                    ],
                  ),
                // button cards yaha se shuru hore
                Container(
                  height: 100,
                  width: 400,
                  alignment: Alignment.center,
                  child: GradientCard(gradient: Gradients.coldLinear,
                    shadowColor: Gradients.haze.colors.last.withOpacity(1),
                  elevation: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Relay One', style: GoogleFonts.exo(color: Colors.deepPurple, fontSize: 35, fontWeight: FontWeight.bold),),
                        FlutterSwitch(
                          width: 65.0,
                          height: 35.0, toggleSize: 28.0,
                          activeColor: Colors.amberAccent,
                          inactiveColor: Colors.black26,
                          value: status, borderRadius: 30.0,
                          padding: 3.0,
                          onToggle: (val) {setState(() {
                            status = val;
                          });
                          },
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),
                ),
                  // dusra switch card
                  Container(
                    height: 100,
                    width: 400,
                    alignment: Alignment.center,
                    child: GradientCard(gradient: Gradients.coldLinear,
                      shadowColor: Gradients.haze.colors.last.withOpacity(1),
                      elevation: 7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Relay Two', style: GoogleFonts.exo(color: Colors.deepPurple, fontSize: 35, fontWeight: FontWeight.bold),),
                          FlutterSwitch(
                            width: 65.0,
                            height: 35.0, toggleSize: 28.0,
                            activeColor: Colors.amberAccent,
                            inactiveColor: Colors.black26,
                            value: status1, borderRadius: 30.0,
                            padding: 3.0,
                            onToggle: (val) {setState(() {
                              status1 = val;
                            });
                            },
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    alignment: Alignment.center,
                    child: GradientCard(gradient: Gradients.coldLinear,
                      shadowColor: Gradients.haze.colors.last.withOpacity(1),
                      elevation: 7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Relay Three', style: GoogleFonts.exo(color: Colors.deepPurple, fontSize: 30, fontWeight: FontWeight.bold),),
                          FlutterSwitch(
                            width: 65.0,
                            height: 35.0, toggleSize: 28.0,
                            activeColor: Colors.amberAccent,
                            inactiveColor: Colors.black26,
                            value: status2, borderRadius: 30.0,
                            padding: 3.0,
                            onToggle: (val) {setState(() {
                              status2 = val;
                            });
                            },
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    alignment: Alignment.center,
                    child: GradientCard(gradient: Gradients.coldLinear,
                      shadowColor: Gradients.haze.colors.last.withOpacity(1),
                      elevation: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Relay Four', style: GoogleFonts.exo(color: Colors.deepPurple, fontSize: 35, fontWeight: FontWeight.bold),),
                          FlutterSwitch(
                            width: 65.0,
                            height: 35.0, toggleSize: 28.0,
                            activeColor: Colors.amberAccent,
                            inactiveColor: Colors.black26,
                            value: status3, borderRadius: 30.0,
                            padding: 3.0,
                            onToggle: (val) {setState(() {
                              status3 = val;
                            });
                              },
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),
                  )

                ],
              )
            ]

    ),
    );
  }
}



